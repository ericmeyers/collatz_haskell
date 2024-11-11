{-# LANGUAGE ExtendedDefaultRules #-}

import Graphics.Matplotlib ( scatter, onscreen )


xs :: [Int]
xs = [1..5000000]

ys :: [Int]
ys = fmap collatzLengthBrian xs

collatzLengthBrian :: Int -> Int
collatzLengthBrian n
    | n==1       = 1
    | even n     = 1 + collatzLengthBrian (n `div` 2)
    | otherwise  = 1 + collatzLengthBrian (3 * n + 1)




main :: IO ()
main = do
    onscreen $ scatter xs ys
    x <- getLine
    putStrLn "Done"
