mapfilter :: (a -> a) -> (a -> Bool) -> [a] -> [a]
mapfilter f p xs = [f x | x <- xs, p x]

mapfilter2 :: (a -> a) -> (a -> Bool) -> [a] -> [a]
mapfilter2 f p xs = (map f . filter p) xs
