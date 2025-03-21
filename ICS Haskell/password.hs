--Substitution table that defines all the encryption keys for the password

substitutionTable :: [(Char, Char)]
--listing all the elements to be replaced
substitutionTable = [('a', '@'), ('b', '8'), ('d', '6'), ('e', '3'), ('g', '9'), ('h', '#'), ('i', '1'), ('l', '!'), ('o', '0'), ('q', '9'), ('s', '$'), ('x', '%'), ('y', '?'), ( 'f', '{'), ( 'c', '(' )]


--now creating a function for part (b) which receives a character and returns either the character itself or a substitution of it. (encryption) and does the inverse (decryption).

encChar :: Char -> Char
-- using lookup to find the correspondig encryption unless none exists
encChar c = case lookup c substitutionTable of
    Just x  -> x
    Nothing -> c

decChar :: Char -> Char
--using loopup to find the corresponding decryption unless none exists
decChar c = case lookup c (map swap substitutionTable) of
    Just x  -> x
    Nothing -> c
-- swapping the elements
  where
    swap (a, b) = (b, a)

-- c) Implement encryption and decryption functions for strings
enc :: String -> String
--mapping each character in the string to the element of in the subsitution table
enc = map encChar

dec :: String -> String
--mapping each character in the string to the element of in the subsitution table
dec = map decChar