halve :: [a] -> ([a], [a])
halve xs = (take n xs, drop n xs)
           where n = div (length xs) 2

{-
div (length xs) 2 を
length xs / 2 と書くと以下のようなErrorでハマった。

Instance of Fractional Int required for definition of halve

参考
Hugs> :type div
div :: Integral a => a -> a -> a
Hugs> :type (/)
(/) :: Fractional a => a -> a -> a
-}
