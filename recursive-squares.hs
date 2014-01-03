-- Coreen Yuen

-- recursively squares a list of integers
recursive-squares :: [Integer] -> [Integer]
recursive-squares (x:xs) = (x ^ 2) : squares xs
