-- Coreen Yuen
-- mapfunc takes a list of functions and a list of items
-- returns a new list resulted from applying each function to its corresponding index

mapfuncs :: [t -> a] -> [t] -> [a]
mapfuncs (f:fs) (x:xs) = f x : mapfuncs fs xs
mapfuncs _ _ = []
