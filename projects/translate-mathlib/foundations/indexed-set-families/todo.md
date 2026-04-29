# Indexed Set Families

Goal: support families of sets and their standard constructions without repeated local definitions.

- [ ] Continue refactoring real-analysis sequence-of-set code toward the shared API; `abs_conv.ac` still keeps a local `set_seq_increasing` wrapper, but its complement-decreasing proof now delegates through the shared stepwise subset API
