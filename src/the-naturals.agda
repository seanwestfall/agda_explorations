{-# BUILTIN NATURAL ℕ #-}

module the-naturals where

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)

infixl 6  _+_  _∸_
infixl 7  _*_

-- the naturals
data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ

-- addition
_+_ : ℕ → ℕ → ℕ
zero + n = n
(suc m) + n = suc (m + n)

-- multiplication
_*_ : ℕ → ℕ → ℕ
zero    * n  =  zero
(suc m) * n  =  n + (m * n)

-- monus ( subtraction for the naturals )
_∸_ : ℕ → ℕ → ℕ
m     ∸ zero   =  m
zero  ∸ suc n  =  zero
suc m ∸ suc n  =  m ∸ n

