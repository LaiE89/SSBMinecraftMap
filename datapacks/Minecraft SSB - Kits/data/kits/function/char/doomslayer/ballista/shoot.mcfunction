# Particles
particle minecraft:dust_color_transition{from_color:[0.98,0.47,0.00],scale:1,to_color:[1.00,0.27,0.02]} ^-0.2 ^ ^ 0 0 0 0 1 force
particle minecraft:dust_color_transition{from_color:[0.98,0.47,0.00],scale:1,to_color:[1.00,0.27,0.02]} ^0.2 ^ ^ 0 0 0 0 1 force

# Raycast
scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute if score @s kits.raycastTick matches 2222.. positioned ^ ^ ^ run function kits:char/doomslayer/ballista/hit

# Energy bolt travels 0.5 blocks repeatedly until collision
execute as @s[scores={kits.raycastTick=..25}] if block ~ ~ ~ #kits:passable positioned ^ ^ ^0.5 run function kits:char/doomslayer/ballista/shoot
