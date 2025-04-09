## Remez Algorithm
# a: = min (|x|,|y|) / max (|x|,|y|)
# s: = a * a
# r: = ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
# if |y| > |x| then r := 1.57079637 - r
# if kits.x < 0 then r := 3.14159274 - r
# if kits.y < 0 then r := -r

# constants
scoreboard players set %-46496 kits.constant -46496
scoreboard players set %-1 kits.constant -1
scoreboard players set %1000 kits.constant 1000
scoreboard players set %10000 kits.constant 10000
scoreboard players set %57295 kits.constant 57295
scoreboard players set %100000 kits.constant 100000
scoreboard players set %1000000 kits.constant 1000000

# a
scoreboard players operation %temp kits.math = in kits.math
scoreboard players operation %temp1 kits.math = in1 kits.math
execute if score %temp kits.math matches ..-1 run scoreboard players operation %temp kits.math *= %-1 kits.constant
execute if score %temp1 kits.math matches ..-1 run scoreboard players operation %temp1 kits.math *= %-1 kits.constant
scoreboard players operation %temp2 kits.math = %temp kits.math
scoreboard players operation %temp2 kits.math < %temp1 kits.math
scoreboard players operation %temp3 kits.math = %temp kits.math
scoreboard players operation %temp3 kits.math > %temp1 kits.math
scoreboard players operation %temp2 kits.math *= %1000 kits.constant
scoreboard players operation %temp2 kits.math /= %temp3 kits.math

# s
scoreboard players operation %temp3 kits.math = %temp2 kits.math
scoreboard players operation %temp3 kits.math *= %temp3 kits.math
scoreboard players operation %temp3 kits.math /= %1000 kits.constant

# r
scoreboard players operation out kits.math = %temp3 kits.math
scoreboard players operation out kits.math *= %-46496 kits.constant
scoreboard players operation out kits.math /= %100000 kits.constant
scoreboard players add out kits.math 1593
scoreboard players operation out kits.math *= %temp3 kits.math
scoreboard players operation out kits.math /= %1000 kits.constant
scoreboard players remove out kits.math 3276
scoreboard players operation out kits.math *= %temp3 kits.math
scoreboard players operation out kits.math /= %1000 kits.constant
scoreboard players operation out kits.math *= %temp2 kits.math
scoreboard players operation out kits.math /= %10000 kits.constant
scoreboard players operation out kits.math += %temp2 kits.math
execute if score %temp1 kits.math > %temp kits.math run scoreboard players remove out kits.math 1570
execute if score %temp1 kits.math > %temp kits.math run scoreboard players operation out kits.math *= %-1 kits.constant
execute if score in kits.math matches ..-1 run scoreboard players remove out kits.math 3141
execute if score in kits.math matches ..-1 run scoreboard players operation out kits.math *= %-1 kits.constant
execute if score in1 kits.math matches ..-1 run scoreboard players operation out kits.math *= %-1 kits.constant

# rad 2 deg
scoreboard players operation out kits.math *= %57295 kits.constant
scoreboard players operation out kits.math /= %1000000 kits.constant