-- Coreen Yuen
module squares
  where
import Test.HUnit

-- squares a list of integers

-- recursive method
recursive :: [Integer] -> [Integer]
recursive(x:xs) = x^2 : recursive xs
-- empty list edge case
recursive [] = []

-- using map and anonymous functions
mapanon :: [Integer] -> [Integer]
mapanon = map (\x -> x^2)

-- unit test cases
-- test cases for recursive method
c1_1 = TestCase (assertEqual "infinite squares" [1,9,25,49] (take 4 (recursive [1,3 ..])))
c1_2 = TestCase (assertEqual "sample squares" [1,4,100] (recursive [1,2,10]))
c1_3 = TestCase (assertEqual "empty list" [] (recursive []))
-- test cases using map and anonymous functions
c2_1 = TestCase (assertEqual "infinite mapanon" [1,9,25,49] (take 4 (mapanon [1,3 ..])))
c2_2 = TestCase (assertEqual "example mapanon" [1,4,100] (mapanon [1,2,10]))
c2_3 = TestCase (assertEqual "empty mapanon" [] (mapanon []))

-- set the test cases to be run
tests = TestList[TestLabel "infinite recursive" c1_1, TestLabel "sample recursive" c1_2, TestLabel "empty recursive" c1_3]

-- run the unit tests
run = runTestTT tests
