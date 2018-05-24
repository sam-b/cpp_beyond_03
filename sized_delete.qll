import cpp

from FunctionCall fc
where fc.getTarget().getName() = "operator delete" and fc.getNumberOfArguments() > 1
and fc.getArgument(0).getUnderlyingType().stripType().getSize() != fc.getArgument(1).getValue().toInt()
select "Mismatch been object size and sized delete argument", fc, fc.getArgument(0).getUnderlyingType().stripType().getSize() , fc.getArgument(1).getValue()