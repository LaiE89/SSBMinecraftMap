scoreboard players set %sqrt.k1 kits.math 10000
scoreboard players operation %sqrt.in_w kits.math = %sqrt.in kits.math
scoreboard players operation %sqrt.in_w kits.math *= %sqrt.k1 kits.math
scoreboard players set %sqrt.k2 kits.math 2
scoreboard players set %sqrt.out kits.math 1
function kits:generic/calc/esqrt