import Mathlib


theorem infinitude_of_primes (n : ℕ) :
    ∃ p : ℕ, n ≤ p ∧ Nat.Prime p := by
  let p := (n.factorial + 1).minFac

  have hne : n.factorial + 1 ≠ 1 := by
    exact Nat.ne_of_gt (Nat.succ_lt_succ (Nat.factorial_pos n))

  have hp : Nat.Prime p := by
    exact Nat.minFac_prime hne

  have hnp : n ≤ p := by
    by_contra h
    have hlt : p < n := Nat.lt_of_not_ge h

    have hdiv : p ∣ n.factorial := by
      exact hp.dvd_factorial.mpr (Nat.le_of_lt hlt)

    have hdivsum : p ∣ n.factorial + 1 := by
      exact Nat.minFac_dvd _

    have hdivone : p ∣ 1 := by
      exact (Nat.dvd_add_iff_right hdiv).mpr hdivsum

    exact hp.not_dvd_one hdivone

  exact ⟨p, hnp, hp⟩
