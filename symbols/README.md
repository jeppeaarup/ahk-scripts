# Symbols

Types Greek letters, unit symbols, math symbols and arrows when you type a short trigger word, in any program.

Type `alphasym` and it becomes `α`. Type `5degsym` and it becomes `5°C`.

Part of [ahk-scripts](../README.md). See the main README for requirements and how to run scripts.

## Usage

Type a trigger and it's replaced right away. You don't need to press space or Enter.

- Triggers are **case-sensitive**. A lowercase trigger gives a lowercase letter (`deltasym` → δ), and a capitalised one gives an uppercase letter (`Deltasym` → Δ).
- Triggers also work straight after other text, so `5degsym` gives `5°C` and `(pisym` gives `(π`.

## Symbol reference

### Greek letters

| Letter | Lowercase trigger | Symbol | Uppercase trigger | Symbol |
|---|---|---|---|---|
| Alpha | `alphasym` / `alfasym` | α | | |
| Beta | `betasym` | β | | |
| Gamma | `gammasym` | γ | `Gammasym` | Γ |
| Delta | `deltasym` | δ | `Deltasym` | Δ |
| Epsilon | `epsilonsym` | ε | | |
| Zeta | `zetasym` | ζ | | |
| Eta | `etasym` | η | | |
| Theta | `thetasym` | θ | `Thetasym` | Θ |
| Iota | `iotasym` | ι | | |
| Kappa | `kappasym` | κ | | |
| Lambda | `lambdasym` | λ | `Lambdasym` | Λ |
| Mu | `musym` | μ | `Musym` | Μ |
| Nu | `nusym` | ν | `Nusym` | Ν |
| Xi | `xisym` | ξ | `Xisym` | Ξ |
| Omicron | `omicronsym` / `omikronsym` | ο | `Omicronsym` / `Omikronsym` | Ο |
| Pi | `pisym` | π | `Pisym` | Π |
| Rho | `rhosym` | ρ | `Rhosym` | Ρ |
| Sigma | `sigmasym` | σ | `Sigmasym` | Σ |
| Tau | `tausym` | τ | `Tausym` | Τ |
| Upsilon | `upsilonsym` | υ | `Upsilonsym` | Υ |
| Phi | `phisym` | φ | `Phisym` | Φ |
| Chi | `chisym` | χ | `Chisym` | Χ |
| Psi | `psisym` | ψ | `Psisym` | Ψ |
| Omega | `omegasym` | ω | `Omegasym` | Ω |

Uppercase Alpha, Beta, Epsilon, Zeta, Eta, Iota and Kappa are left out because they look the same as the Latin letters A, B, E, Z, H, I and K.

### Variant forms

| Trigger | Symbol | Name |
|---|---|---|
| `varthetasym` | ϑ | Theta symbol |
| `varphisym` | ϕ | Phi symbol |
| `varepsilonsym` | ϵ | Lunate epsilon |
| `varsigmasym` | ς | Final sigma |

### Units

| Trigger | Output |
|---|---|
| `degsym` | °C |
| `brixsym` | °Brix |
| `bxsym` | °Bx |
| `microsym` | µ (micro sign, for µg, µL) |

### Math

| Trigger | Symbol | Meaning |
|---|---|---|
| `approxsym` | ≈ | Approximately |
| `pmsym` | ± | Plus or minus |
| `leqsym` | ≤ | Less than or equal |
| `geqsym` | ≥ | Greater than or equal |
| `neqsym` | ≠ | Not equal |
| `timessym` | × | Multiplication |
| `infsym` | ∞ | Infinity |

### Arrows

| Trigger | Symbol |
|---|---|
| `rarsym` | → |
| `larsym` | ← |
| `uarsym` | ↑ |
| `darsym` | ↓ |

## Adding your own symbols

Add a line in this form:

```
::triggersym::symbol
```

The options set at the top of the script (`#Hotstring * ? C T`) apply to every line, so you don't need to repeat them.

**Order matters.** Because triggers can fire in the middle of a word, a trigger that ends with another trigger's name must come *above* it in the file. For example, `thetasym` ends in `etasym`, so `thetasym` is listed first. Otherwise, typing `thetasym` would give `thη`.

Keep the file saved as **UTF-8 with BOM** so the symbols aren't garbled. The repo's `.editorconfig` handles this in most editors.

## Notes

- **μ vs µ:** `musym` types the Greek letter mu (U+03BC). `microsym` types the micro sign (U+00B5), which is the correct character for SI prefixes. They look almost the same.