load harness
@test "new-1" {
  check 'if true ∧ -3 < -14 then x := -1 else y := 2' '⇒ y := 2, {}
⇒ skip, {y → 2}'
}

@test "new-2" {
  check 'if ( 0 - 0 ) < 0 then z8 := 09 else z3 := 90' '⇒ z3 := 90, {}
⇒ skip, {z3 → 90}'
}

@test "new-3" {
  check 'z := ( - 1 ) * -4' '⇒ skip, {z → 4}'
}

@test "new-4" {
  check 'while true ∨ true ∧ false ∨ true do x := 3' '⇒ skip, {x → 3}'
}

@test "new-5" {
  check 'while true ∧ true ∧ true ∨ false do x := 3' '⇒ skip, {x → 3}'
}

@test "new-6" {
  check 'if ( 1 - 1 ) = 0 then z8 := 09 else z3 := 90' '⇒ z3 := 9, {}
⇒ skip, {z3 → 90}'
}
