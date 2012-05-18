replicate :: Int -> a -> [a]
replicate n x = [x | i <- [1..n]]
