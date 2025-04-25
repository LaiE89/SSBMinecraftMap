scoreboard players set @s kits.raycastTick 0
execute if score @s kits.wasd.w matches 1 if score @s kits.wasd.a matches 1 rotated ~-45 0 run return run function kits:char/midoriya/one_for_all/dash/calculate_range
execute if score @s kits.wasd.w matches 1 if score @s kits.wasd.d matches 1 rotated ~45 0 run return run function kits:char/midoriya/one_for_all/dash/calculate_range
execute if score @s kits.wasd.s matches 1 if score @s kits.wasd.a matches 1 rotated ~225 0 run return run function kits:char/midoriya/one_for_all/dash/calculate_range
execute if score @s kits.wasd.s matches 1 if score @s kits.wasd.d matches 1 rotated ~135 0 run return run function kits:char/midoriya/one_for_all/dash/calculate_range

execute if score @s kits.wasd.d matches 1 rotated ~90 0 run return run function kits:char/midoriya/one_for_all/dash/calculate_range
execute if score @s kits.wasd.a matches 1 rotated ~-90 0 run return run function kits:char/midoriya/one_for_all/dash/calculate_range
execute if score @s kits.wasd.s matches 1 rotated ~180 0 run return run function kits:char/midoriya/one_for_all/dash/calculate_range
execute rotated ~ 0 run function kits:char/midoriya/one_for_all/dash/calculate_range
