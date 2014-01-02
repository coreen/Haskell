-- Coreen Yuen
module cone-volume
  where
import Test.HUnit

-- asks for radius and height of the cone to calculate volume
cone-volume :: Double -> Double -> Double
cone-volume r h = (1/3) * (r ^ 2) * h * pi

-- unit test cases
c1 = TestCase (assertEqual "zero volume" 0 (cone-volume 0 0))
c2 = TestCase (assertEqual "integer volume" 20.94395102393195 (cone-volume 2 5))
c3 = TestCase (assertEqual "double volume" 65.14406526483795 (cone-volume 3.6 4.8))

-- run the test cases
run = runTestTT TestList[TestLabel "zero test" c1,
                         TestLabel "integer test" c2,
                         TestLabel "double test" c3]
