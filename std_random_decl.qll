import cpp

from VariableDeclarationEntry v
where v.getType().stripType().getName().indexOf("linear_congruential_engine") != -1
or v.getType().stripType().getName().indexOf("mersenne_twister_engine") != -1
or v.getType().stripType().getName().indexOf("subtract_with_carry_engine") != -1
select "Non-cryptographically secure RNG in use" as issue, v.getVariable() as declaration