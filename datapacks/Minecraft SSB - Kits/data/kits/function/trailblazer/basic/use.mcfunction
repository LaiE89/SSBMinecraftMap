## When Basic Attack is Used
# Dash and strike
scoreboard players set @s kits.raycastTick 15
execute positioned ~ ~0.5 ~ run function kits:trailblazer/basic/dash
execute positioned as @s as @e[distance=..5,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:trailblazer/basic/hit

# FX
execute positioned as @s positioned ^0.125 ^0.875 ^3 run function kits:trailblazer/vfx/particles/strike
execute rotated ~180 0 positioned ~ ~-0.1 ~ run function kits:trailblazer/vfx/particles/afterimage
playsound entity.ender_dragon.shoot neutral @a[distance=..20] ~ ~ ~ 1 0.75 1

# Updates trailblazer data
function kits:trailblazer/talent/turn_cycle
scoreboard players add @s[scores={kits.ability1CD=..4}] kits.ability1CD 1
scoreboard players set @s kits.ability3CD 0
