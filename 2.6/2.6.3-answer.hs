-- 関数名は英小文字から始める。
-- 演算子はバッククォートで囲む。
n = a `div` length xs
    where
      a = 10
      xs = [1,2,3,4,5]