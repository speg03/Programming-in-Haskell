mult :: Nat -> Nat -> Nat
mult Zero _ = Zero
mult _ Zero = Zero
mult (Succ Zero) n = n
mult (Succ m) n = add (mult m n) n


-- 以下、10.3節より
data Nat = Zero | Succ Nat

nat2int :: Nat -> Int
nat2int Zero     = 0
nat2int (Succ n) = 1 + nat2int n

int2nat :: Int -> Nat
int2nat 0     = Zero
int2nat (n+1) = Succ (int2nat n)

add :: Nat -> Nat -> Nat
add Zero n     = n
add (Succ m) n = Succ (add m n)
