dtob :: Word -> String
dtob 0 = "0"
dtob 1 = "1"
dtob n = dtob (n `div` 2) ++ show (n `mod` 2)