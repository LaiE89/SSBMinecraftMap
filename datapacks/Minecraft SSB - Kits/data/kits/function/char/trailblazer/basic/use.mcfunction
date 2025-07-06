## When Basic Attack is Used
# Dash and strike
scoreboard players set @s kits.raycastTick 15
execute rotated ~ 0 run function kits:char/trailblazer/basic/dash
execute positioned as @s as @e[distance=..5,type=!#kits:non_entity,tag=!Trailblazer,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/trailblazer/basic/hit

# FX
execute positioned as @s positioned ^0.125 ^0.875 ^3 run function kits:char/trailblazer/vfx/particles/strike
execute rotated ~180 0 positioned ~ ~-0.1 ~ run function kits:char/trailblazer/vfx/particles/afterimage
playsound minecraft:block.gravel.fall neutral @a[distance=..30] ~ ~ ~ 3 1.5 1

# Updates trailblazer data
function kits:char/trailblazer/talent/turn_cycle
scoreboard players add @s[scores={kits.ability1CD=..4}] kits.ability1CD 1
scoreboard players set @s kits.ability3CD 0
