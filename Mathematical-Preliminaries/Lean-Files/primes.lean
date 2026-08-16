import Mathlib

theorem exists_prime_gt (n : ℕ) : ∃ p : ℕ, Nat.Prime p ∧ n < p := by
  have h : Set.Infinite {p : ℕ | Nat.Prime p} :=
    Set.infinite_setOf_prime

  have h_unbounded : Set.Nonempty {p : ℕ | Nat.Prime p ∧ n < p} := by
    exact Set.Infinite.exists_gt h n

  rcases h_unbounded with ⟨p, hp⟩
  exact ⟨p, hp.1, hp.2⟩
