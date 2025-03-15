btod :: String -> Word
btod [] = 0
btod bin@('1':tail) = 2^((length bin) - 1) + btod tail
btod ('0':tail) = btod tail
