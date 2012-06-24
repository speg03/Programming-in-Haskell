sum :: Num a => [a] -> a
sum [] = 0
sum (n:ns) = n + (sum ns)

take :: Int -> [a] -> [a]
take _ [] = []
take 0 _ = []
take (n+1) (x:xs) = x : take n xs

last :: [a] -> a
last [x] = x
last (x:xs) = last xs
