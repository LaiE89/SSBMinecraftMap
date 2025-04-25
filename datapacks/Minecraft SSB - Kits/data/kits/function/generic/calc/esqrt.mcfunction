scoreboard players operation %sqrt.k4 kits.math = %sqrt.out kits.math
scoreboard players operation %sqrt.k3 kits.math = %sqrt.in_w kits.math
scoreboard players operation %sqrt.k3 kits.math /= %sqrt.out kits.math
scoreboard players operation %sqrt.out kits.math += %sqrt.k3 kits.math
scoreboard players operation %sqrt.out kits.math /= %sqrt.k2 kits.math
scoreboard players operation %sqrt.k4 kits.math -= %sqrt.out kits.math
execute unless score %sqrt.k4 kits.math matches -1..1 run function kits:generic/calc/esqrt