-- Coreen Yuen
module recursive-squares
  where
import Test.HUnit

-- recursively squares a list of integers
recursive-squares :: [Integer] -> [Integer]
recursive-squares (x:xs) = (x ^ 2) : squares xs
-- empty list edge case
recursive-squares [] = []

-- unit test cases
c1 = TestCase (assertEqual "infinite squares" [1,9,25,49] (take 4 (recursive-squares [1,3 ..])))
c2 = TestCase (assertEqual "sample squares" [1,4,100] (recursive-squares [1,2,10]))
c3 = TestCase (assertEqual "empty list" [] (recursive-squares []))

-- run the unit tests
run = runTestTT TestList[TestLabel "infinite test" c1,
                         TestLabel "sample test" c2,
                         TestLabel "empty test" c3]
