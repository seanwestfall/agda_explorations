record category { ℓ₀ ℓ₁ } { k : Set ℓ₀ } (_⇒_ : k → k → Set ℓ₁) : Set (lsuc lzero ⊔ ℓ₀ ⊔ ℓ₁)
record groupoid { ℓ₀ ℓ₁ } { k : Set ℓ₀ } (_≈_ : k → k → Set ℓ₁) : Set (lsuc lzero ⊔ ℓ₀ ⊔ ℓ₁)
record groupoid { ℓ₀ ℓ₁ } { k } _≈_
  where
  coinductive
  field
    ⦃ cat ⦄ : category _≈_
  field
    symmetry : ∀ { x y } → x ≈ y → y ≈ x
record category { ℓ₀ ℓ₁ } { k } _⇒_
  where
  coinductive
  field
    id  : ∀ { a } → a ⇒ a
    _∘_ : ∀ { a b c } → b ⇒ c → a ⇒ b → a ⇒ c
  field
    _≈_ : { a b : k } → (f g : a ⇒ b) → Set
    ⦃ hom ⦄ : { a b : k } → groupoid { k = a ⇒ b } _≈_
  field
    lunit : ∀ { a b }     { x : a ⇒ b }                             → (id ∘ x) ≈ x
    runit : ∀ { a b }     { x : a ⇒ b }                             → (x ∘ id) ≈ x
    assoc : ∀ { a b c d } { x : c ⇒ d } { y : b ⇒ c } { z : a ⇒ b } → (x ∘ (y ∘ z)) ≈ ((x ∘ y) ∘ z)
open category ⦃ ... ⦄
open groupoid ⦃ ... ⦄
