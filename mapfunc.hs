-- Coreen Yuen

-- mapfunc takes a list of functions and a list of items
-- returns a new list resulted from applying each function to its corresponding index

-- examples of usage:
--    mapfuncs [(+7), (+5)] [1..] => [8, 7]
--    mapfuncs [(-1), (*2), sqrt] [2.0, 3.5, 4.0] => [1.0, 7.0, 2.0]

mapfuncs :: [t -> a] -> [t] -> [a]
mapfuncs (f:fs) (x:xs) = f x : mapfuncs fs xs
mapfuncs _ _ = []
