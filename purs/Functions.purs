module Functions where

import Prelude
import Math (sqrt)


add3 :: Int -> Int -> Int -> Int
add3 = \x -> \y -> \z -> x + y + z

pow2 :: Number -> Number
pow2 = \x -> x * x

distance :: Number -> Number -> Number -> Number -> Number
distance = \px -> \py -> \qx -> \qy -> sqrt $ pow2 (px - qx) + pow2 (py - qy)

nameflip :: String -> String -> String
nameflip = \first -> \last -> flip (\s1 -> \s2 -> s1 <> " " <> s2) first last

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n - 1)

calc = \f -> \n1 -> \n2 -> f n1 n2
add = calc (+)
sub = calc (-)
div = calc (/)
mul = calc (*)
