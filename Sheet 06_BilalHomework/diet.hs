-- Problem 6.3 (a)
implies :: Bool -> Bool -> Bool
implies x y  = not x || y

diet :: Bool -> Bool -> Bool -> Bool
diet b f i  = ((implies(not b) (f)) && (implies(b && f) (not i)) && (implies(i || not b) (not f)))

diet' :: Bool -> Bool -> Bool -> Bool
diet' b f i  = (b && (not f || not i))

--Problem 6.3 (b)
truthTable :: (Bool -> Bool -> Bool -> Bool) -> [(Bool, Bool, Bool, Bool)]
truthTable diet' = [(b, f, i, diet' b f i) | b <- [True, False], f <- [True, False], i <- [True, False]]


