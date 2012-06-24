msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort (fst t)) (msort (snd t))
    where t = halve xs

halve :: [a] -> ([a],[a])
halve [] = ([],[])
halve xs = (take n xs, drop n xs)
    where n = (length xs) `div` 2

-- 6.8.4の解答と同じ
merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys
