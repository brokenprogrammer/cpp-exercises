-- How would the function anagrams :: Int -> [Word] -> String 
-- be designed?
--
-- Answer:
--  A function to extract the words: getWords :: Int -> [Word] -> [Word]
--  A function to label each word according to the characters within it:
--      addLabel :: Word -> (Label, Word)
--  A function to sort all the labels: sortLabels :: [(Label, Word)] -> [(Label, Word)]
--  A function to add all the words with same labels together: groupByLabel :: [(Label, Word)] -> [(Label, Word)]
--  A function to show each result: showEntry :: [(Label, Word)] -> String
-- 
--  Then the anagrams function can be described as:
--      anagrams n = concat . map showEntry . groupByLabel . sortLabels
--          . map addLabel . getWords n