and :: [Bool] -> Bool
and [] = True
and (x:xs) = x && and xs

concat :: [[a]] -> [a]
concat [] = []
concat (x:xs) = x ++ concat xs

replicate :: Int -> a -> [a]
replicate 0 _ = []
replicate (n + 1) x = x : replicate n x

(!!) :: [a] -> Int -> a
(x:xs) !! 0 = x
(x:xs) !! (n + 1) = xs !! n

elem :: Eq a => a -> [a] -> Bool
elem _ [] = False
elem x (y:ys) | x == y = True
                | otherwise = elem x ys
