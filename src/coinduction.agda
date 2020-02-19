{-# OPTIONS --guardedness #-}

record _≈_ {A : Set} (xs : Stream A) (ys : Stream A) : Set where
  coinductive
  field
    hd-≈ : hd xs ≡ hd ys
    tl-≈ : tl xs ≈ tl ys

even : ∀ {A} → Stream A → Stream A
hd (even x) = hd x
tl (even x) = even (tl (tl x))

odd : ∀ {A} → Stream A → Stream A
odd x = even (tl x)

split : ∀ {A} → Stream A → Stream A × Stream A
split xs = even xs , odd xs

merge : ∀ {A} → Stream A × Stream A → Stream A
hd (merge (fst , snd)) = hd fst
tl (merge (fst , snd)) = merge (snd , tl fst)

merge-split-id : ∀ {A} (xs : Stream A) → merge (split xs) ≈ xs
hd-≈ (merge-split-id _)  = refl
tl-≈ (merge-split-id xs) = merge-split-id (tl xs)
