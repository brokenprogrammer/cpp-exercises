main = do
  print  (True && True) --True
  print  (True || False) --True
  print  (not False) --True
  print  (3 <= 5 && 5 <= 10) --True
  print  (3 <= 20 && 20 <= 10) --False
  print  (False == True) --False
  print  (1 == 1) --True
  print  (1 /= 2) --True
  print  (1 /= 1) --False
