data Tree = Leaf Int | Node Tree Int Tree

t :: Tree
t = Node (Node (Leaf 1) 3 (Leaf 4)) 5 (Node (Leaf 6) 7 (Leaf 9))

occurs :: Int -> Tree -> Bool
occurs m (Leaf n) = compare m n == EQ
occurs m (Node l n r)
    | compare m n == EQ = True
    | compare m n == LT = occurs m l
    | otherwise = occurs m r