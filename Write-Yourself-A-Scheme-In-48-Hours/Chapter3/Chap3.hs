module Main where
import Control.Monad
import System.Environment
import Text.ParserCombinators.Parsec hiding (spaces1)
import Numeric (readOct, readHex, readFloat)
import Data.Char
import Data.Ratio ((%), Rational)
import Data.Complex
import Data.Array

main :: IO ()
main = getArgs >>= putStrLn . show . eval . readExpr . (!! 0)

data LispVal = Atom String
             | List [LispVal]
             | DottedList [LispVal] LispVal
             | Number Integer
             | String String
             | Bool Bool
             | Char Char
             | Float Double
             | Ratio Rational
             | Complex (Complex Double)
             | Vector (Array Int LispVal)
             deriving (Eq)

instance Show LispVal where show = showVal

showVal :: LispVal -> String
showVal (String contents) = "\"" ++ contents ++ "\""
showVal (Atom name) = name
showVal (Number contents) = show contents
showVal (Complex c) = show c
showVal (Float f) = show f
showVal (Ratio r) = show r
showVal (Bool True) = "#t"
showVal (Bool False) = "#f"
showVal (List contents) = "(" ++ unwordsList contents ++ ")"
showVal (Vector contents) = "(" ++ unwordsList (elems contents) ++ ")"
showVal (DottedList head tail) = "(" ++ unwordsList head ++ "." ++ showVal tail ++ ")"

unwordsList :: [LispVal] -> String
unwordsList = unwords . map showVal

apply :: String -> [LispVal] -> LispVal
apply func args = maybe (Bool False) ($ args) $ lookup func primitives

primitives :: [(String, [LispVal] -> LispVal)]
primitives = [("+", numericBinop (+)),
              ("-", numericBinop (-)),
              ("*", numericBinop (*)),
              ("/", numericBinop div),
              ("mod", numericBinop mod),
              ("quotient", numericBinop quot),
              ("remainder", numericBinop rem),
              ("symbol?" , unaryOp symbolp) ,
              ("string?" , unaryOp stringp) ,
              ("number?" , unaryOp numberp) ,
              ("bool?", unaryOp boolp) ,
              ("list?" , unaryOp listp)
              ]

numericBinop :: (Integer -> Integer -> Integer) -> [LispVal] -> LispVal
numericBinop f args = Number $ foldl1 f (unpackList args)

unpackNumber :: LispVal -> Integer
unpackNumber (Number a) = a
unpackNumber _ = 0

unpackList :: [LispVal] -> [Integer]
unpackList = map unpackNumber

unaryOp :: (LispVal -> LispVal) -> [LispVal] -> LispVal
unaryOp f [v] = f v

symbolp, numberp, stringp, boolp, listp :: LispVal -> LispVal
symbolp (Atom _) = Bool True
symbolp _ = Bool False
numberp (Number _) = Bool True
numberp _          = Bool False
stringp (String _) = Bool True
stringp _          = Bool False
boolp   (Bool _)   = Bool True
boolp   _          = Bool False
listp   (List _)   = Bool True
listp   (DottedList _ _) = Bool True
listp _ = Bool False

parseChar :: Parser LispVal
parseChar = do
          string "#\\"
          x <- many1 letter
          return $ case (map toLower x) of
                 "space" -> Char ' '
                 "newline" -> Char '\n'
                 [x] -> Char x

parseString :: Parser LispVal
parseString = do
            char '"'
            x <- many (escapedChars <|> (noneOf ['\\', '"']))
            char '"'
            return $ String x

parseList :: Parser LispVal
parseList =  do char '(' >> spaces
                head <- sepEndBy parseExpr spaces1
                do  char '.' >> spaces1
                    tail <- parseExpr
                    spaces >> char ')'
                    return $ DottedList head tail
                    <|> (spaces >> char ')' >> (return $ List head))

parseDottedList :: Parser LispVal
parseDottedList = do
        head <- endBy parseExpr spaces
        tail <- char '.' >> spaces >> parseExpr
        return $ DottedList head tail

parseQuoted :: Parser LispVal
parseQuoted = do
        char '\''
        x <- parseExpr
        return $ List [Atom "quote", x]

parseQuasiQuoted :: Parser LispVal
parseQuasiQuoted = do
        char '`'
        x <- parseExpr
        return $ List [Atom "quasiquote", x]

parseUnQuote :: Parser LispVal
parseUnQuote = do
        char ','
        x <- parseExpr
        return $ List [Atom "unquote", x]

parseVector :: Parser LispVal
parseVector = do arrayValues <- sepBy parseExpr spaces
                 return $ Vector (listArray (0,(length arrayValues-1)) arrayValues)

escapedChars :: Parser Char
escapedChars = do
             char '\\'
             c <- oneOf ['\\', '"', 'n', 'r', 't']
             return $ case c of
                    '\\' -> c
                    '"'  -> c
                    'n'  -> '\n'
                    'r'  -> '\r'
                    't'  -> '\t'

parseAtom :: Parser LispVal
parseAtom = do
          first <- letter <|> symbol
          rest <- many (letter <|> digit <|> symbol)
          let atom = first:rest
          return $ Atom atom

parseBool :: Parser LispVal
parseBool = do
          char '#'
          (char 't' >> return (Bool True)) <|> (char 'f' >> return (Bool False))

parseNumber :: Parser LispVal
parseNumber = parsePlainNumber <|> parseDecimal <|> parseOctal <|> parseHex 
           <|> parseBinary

parsePlainNumber :: Parser LispVal
parsePlainNumber = (many1 digit) >>= (\x -> return ((Number . read) x))

parseDecimal :: Parser LispVal
parseDecimal = do
             try $ string "#d"
             n <- many1 digit
             (return . Number . read) n

parseFloat :: Parser LispVal
parseFloat = do
           x <- many1 digit
           char '.'
           y <- many1 digit
           return $ Float (fst.head $ readFloat (x ++ "." ++ y) :: Double)

parseBinary :: Parser LispVal
parseBinary = do
            try $ string "#b"
            n <- many $ oneOf "01"
            (return . Number . binaryToInt) n

parseOctal :: Parser LispVal
parseOctal = do
           try $ string "#o"
           n <- many $ oneOf "01234567"
           return (Number (fst (readOct n !! 0)))

parseHex :: Parser LispVal
parseHex = do
         try $ string "#x"
         n <- many $ oneOf "0123456789abcdefABCDEF"
         return (Number (fst (readHex n !! 0)))

readWith f s = fst $ f s !! 0

parseRatio :: Parser LispVal
parseRatio = do
        x <- many1 digit
        char '/'
        y <- many1 digit
        return $ Ratio ((read x) % (read y))

parseComplex :: Parser LispVal
parseComplex = do 
            x <- (try parseFloat <|> parseDecimal <|> parseNumber)
            char '+' 
            y <- (try parseFloat <|> parseDecimal <|> parseNumber)
            char 'i' 
            return $ Complex (toDouble x :+ toDouble y)

binaryToInt :: String -> Integer
binaryToInt str = foldl1 ((+) . (*2)) $ map val (reverse str)
                where val '0' = 0
                      val '1' = 1

toDouble :: LispVal -> Double
toDouble (Float f) = realToFrac f
toDouble (Number n) = fromIntegral n

parseExpr :: Parser LispVal
parseExpr = parseAtom 
          <|> parseString
          <|> try parseChar
          <|> try parseComplex
          <|> try parseFloat
          <|> try parseRatio
          <|> try parseNumber
          <|> try parseBool
          <|> try parseQuasiQuoted
          <|> try parseUnQuote
          <|> try parseQuoted
          <|> try (do string "#("
                      x <- parseVector
                      char ')'
                      return x)
          <|> try parseList

symbol :: Parser Char
symbol = oneOf "!$%&|*+-/:<=>?@^_~"

spaces1 :: Parser ()
spaces1 = skipMany1 space

readExpr :: String -> LispVal
readExpr input = case parse parseExpr "lisp" input of
         Left err -> String $ "No match: " ++ show err
         Right val -> val

eval :: LispVal -> LispVal
eval val@(String _) = val
eval val@(Number _) = val
eval val@(Bool _) = val
eval (List [Atom "quote", val]) = val
eval (List (Atom func : args)) = apply func $ map eval args
eval a = a