module Quicksort where

import Prelude
import Data.List


qsort :: forall a. Ord a => List a -> List a
qsort Nil     = Nil
qsort (x:Nil) = (x:Nil)
qsort (x:xs)  = qsort smallerOrEqual <> (x:Nil) <> qsort bigger
   where
         smallerOrEqual = filter (\n -> n <= x) xs
         bigger         = filter (\n -> n > x)  xs
