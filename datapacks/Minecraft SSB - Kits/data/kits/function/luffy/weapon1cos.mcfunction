playsound minecraft:block.gravel.fall neutral @a[distance=..15] ~ ~ ~ 3 0 1
particle block{block_state:"minecraft:dirt"} ~ ~0.5 ~ 2 0 2 0 100 force
scoreboard players set @s kits.ability2CD 0

scoreboard players set @s kits.raycastTick2 0
execute if score @s kits.wasd.w matches 1 if score @s kits.wasd.a matches 1 rotated ~-45 0 run return run function kits:luffy/dash
execute if score @s kits.wasd.w matches 1 if score @s kits.wasd.d matches 1 rotated ~45 0 run return run function kits:luffy/dash
execute if score @s kits.wasd.s matches 1 if score @s kits.wasd.a matches 1 rotated ~225 0 run return run function kits:luffy/dash
execute if score @s kits.wasd.s matches 1 if score @s kits.wasd.d matches 1 rotated ~135 0 run return run function kits:luffy/dash

execute if score @s kits.wasd.d matches 1 rotated ~90 0 run return run function kits:luffy/dash
execute if score @s kits.wasd.a matches 1 rotated ~-90 0 run return run function kits:luffy/dash
execute if score @s kits.wasd.s matches 1 rotated ~180 0 run return run function kits:luffy/dash
execute rotated ~ 0 run return run function kits:luffy/dash
