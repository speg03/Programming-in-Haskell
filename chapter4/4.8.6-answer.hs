mult :: Integral n => n -> n -> n -> n
-- mult x y z = x * y * z
mult = \x -> (\y -> (\z -> x * y * z))
