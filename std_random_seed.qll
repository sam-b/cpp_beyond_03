import cpp

predicate is_rng(Type type) {
 	 type.getName().indexOf("linear_congruential_engine") != -1
	or type.getName().indexOf("mersenne_twister_engine") != -1
	or type.getName().indexOf("subtract_with_carry_engine") != -1
}

from FunctionCall fc
where fc.getTarget().hasName("seed") and fc.getNumberOfArguments() = 1 
and is_rng(fc.getTarget().getDeclaringType())
select "Static seed value in use: ", fc.getArgument(0) as value, fc as at, fc.getTarget().getDeclaringType() as type