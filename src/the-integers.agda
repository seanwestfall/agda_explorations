{-# BUILTIN NATURAL ℕ #-}
------------------------------------------------------------------------
-- The Integers
--
-- or an extension of the Naturals (see the-naturals.agda)
------------------------------------------------------------------------

module the-integer where

open import Data.Nat as ℕ
  using (ℕ) renaming (_+_ to _ℕ+_; _*_ to _ℕ*_)
import Data.Nat.Show as ℕ

import Relation.Nullary.Decidable as Dec
open import Relation.Binary
open import Relation.Binary.PropositionalEquality as PropEq
  using (_≡_; refl; sym; cong; cong₂)
open PropEq.≡-Reasoning
