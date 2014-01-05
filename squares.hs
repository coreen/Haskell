-- Coreen Yuen
module squares
  where
import Test.HUnit

-- squares a list of integers

-- recursive method
recursive :: [Integer] -> [Integer]
recursive(x:xs) = (x ^ 2) : recursive xs
-- empty list edge case
recursive [] = []

-- unit test cases
c1 = TestCase (assertEqual "infinite squares" [1,9,25,49] (take 4 (recursive [1,3 ..])))
c2 = TestCase (assertEqual "sample squares" [1,4,100] (recursive [1,2,10]))
c3 = TestCase (assertEqual "empty list" [] (recursive []))

-- run the unit tests
run = runTestTT TestList[TestLabel "infinite test" c1,
                         TestLabel "sample test" c2,
                         TestLabel "empty test" c3]
