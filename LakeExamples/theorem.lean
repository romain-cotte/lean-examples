import Mathlib

#check Nat
#eval 2 + 3


def p: Nat := 10

#check p

structure Hamster where
  name : String
  fluffy : Bool


example : ∀ m n : Nat, Even n → Even (m * n) := by
  -- Say `m` and `n` are natural numbers, and assume `n = 2 * k`.
  rintro m n ⟨k, hk⟩
  -- We need to prove `m * n` is twice a natural number. Let's show it's twice `m * k`.
  use m * k
  -- Substitute for `n`,
  rw [hk]
  -- and now it's obvious.
  ring
