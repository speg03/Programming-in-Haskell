{-- 最初に見つけた要素を削除する
*Main> removeFirst 1 [2,3,4,5,1,7,8,9]
[2,3,4,5,7,8,9]
*Main> removeFirst 1 [2,3,4,5,7,8,9]
[2,3,4,5,7,8,9]
--}
removeFirst :: Eq a => a -> [a] -> [a]
removeFirst x ys = ls ++ rs
                   where ls = takeWhile (/= x) ys
		         rs = drop (length ls + 1) ys

{-- 左のリストが右のリストから選択されたかどうか
*Main> isChoice [2] [2,3,4,5,7,8,9]
True
*Main> isChoice [1] [2,3,4,5,7,8,9]
False
*Main> isChoice [2,8,9] [2,3,4,5,7,8,9]
True
*Main> isChoice [9,2,3] [2,3,4,5,7,8,9]
True
*Main> isChoice [2,3,1] [2,3,4,5,7,8,9]
False
--}
isChoice :: Eq a => [a] -> [a] -> Bool
isChoice [] _ = True
isChoice _ [] = False
isChoice xs (y:ys) = isChoice (removeFirst y xs) ys
