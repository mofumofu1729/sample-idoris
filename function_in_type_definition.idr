-- 型に関数を書く
isSingleton : Bool -> Type
isSingleton True = Nat
isSingleton False = List Nat

sum : (single : Bool) -> isSingleton single -> Nat
sum True x = x
sum False [] = 0
sum False (x :: xs) = x * sum False xs
