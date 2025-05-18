scoreboard players set @s kits.ability2CD 98
execute at @s positioned ^ ^1.25 ^1 run execute as @e[distance=1.6..5,type=!#kits:non_entity,tag=!Invincible,tag=!Guts,tag=!InLabyrinth] at @s run function kits:char/guts/cannon/damage
execute at @s positioned ^ ^1.25 ^1 run execute as @e[distance=..1.5,type=!#kits:non_entity,tag=!Invincible,tag=!Guts,tag=!InLabyrinth] at @s run function kits:char/guts/cannon/damage2

particle explosion_emitter ^ ^1.25 ^2 0 0 0 0 1 force
particle cloud ^ ^1.250 ^1.5 0 0 0 0.1 10 force
particle cloud ^ ^1.250 ^2 0.2 0.2 0.2 0.1 20 force
particle cloud ^ ^1.250 ^3 0.4 0.4 0.4 0.1 50 force
particle cloud ^ ^1.250 ^5 0.8 0.8 0.8 0.1 100 force
particle explosion ^0.000 ^1.250 ^0.000 0 0 0 0.01 1 force
particle explosion ^0.027 ^1.299 ^0.143 0 0 0 0.01 1 force
particle explosion ^0.093 ^1.310 ^0.286 0 0 0 0.01 1 force
particle explosion ^0.166 ^1.262 ^0.429 0 0 0 0.01 1 force
particle explosion ^0.202 ^1.158 ^0.571 0 0 0 0.01 1 force
particle explosion ^0.166 ^1.027 ^0.714 0 0 0 0.01 1 force
particle explosion ^0.047 ^0.920 ^0.857 0 0 0 0.01 1 force
particle explosion ^-0.136 ^0.886 ^1.000 0 0 0 0.01 1 force
particle explosion ^-0.336 ^0.959 ^1.143 0 0 0 0.01 1 force
particle explosion ^-0.489 ^1.145 ^1.286 0 0 0 0.01 1 force
particle explosion ^-0.533 ^1.408 ^1.429 0 0 0 0.01 1 force
particle explosion ^-0.431 ^1.683 ^1.571 0 0 0 0.01 1 force
particle explosion ^-0.186 ^1.890 ^1.714 0 0 0 0.01 1 force
particle explosion ^0.155 ^1.955 ^1.857 0 0 0 0.01 1 force
particle explosion ^0.511 ^1.836 ^2.000 0 0 0 0.01 1 force
particle explosion ^0.782 ^1.539 ^2.143 0 0 0 0.01 1 force
particle explosion ^0.879 ^1.121 ^2.286 0 0 0 0.01 1 force
particle explosion ^0.754 ^0.681 ^2.429 0 0 0 0.01 1 force
particle explosion ^0.412 ^0.339 ^2.571 0 0 0 0.01 1 force
particle explosion ^-0.079 ^0.197 ^2.714 0 0 0 0.01 1 force
particle explosion ^-0.604 ^0.318 ^2.857 0 0 0 0.01 1 force
particle explosion ^-1.026 ^0.695 ^3.000 0 0 0 0.01 1 force
particle explosion ^-1.222 ^1.255 ^3.143 0 0 0 0.01 1 force
particle explosion ^-1.119 ^1.868 ^3.286 0 0 0 0.01 1 force
particle explosion ^-0.715 ^2.375 ^3.429 0 0 0 0.01 1 force
particle explosion ^-0.092 ^2.636 ^3.571 0 0 0 0.01 1 force
particle explosion ^0.607 ^2.561 ^3.714 0 0 0 0.01 1 force
particle explosion ^1.206 ^2.142 ^3.857 0 0 0 0.01 1 force
particle explosion ^1.541 ^1.463 ^4.000 0 0 0 0.01 1 force
particle explosion ^1.506 ^0.678 ^4.143 0 0 0 0.01 1 force
particle explosion ^1.084 ^-0.016 ^4.286 0 0 0 0.01 1 force
particle explosion ^0.356 ^-0.435 ^4.429 0 0 0 0.01 1 force
particle explosion ^-0.512 ^-0.453 ^4.571 0 0 0 0.01 1 force
particle explosion ^-1.305 ^-0.038 ^4.714 0 0 0 0.01 1 force
particle explosion ^-1.816 ^0.730 ^4.857 0 0 0 0.01 1 force
particle explosion ^-1.897 ^1.677 ^5.000 0 0 0 0.01 1 force
particle explosion ^-1.502 ^2.571 ^5.143 0 0 0 0.01 1 force
particle explosion ^-0.704 ^3.181 ^5.286 0 0 0 0.01 1 force
particle explosion ^0.316 ^3.337 ^5.429 0 0 0 0.01 1 force
particle explosion ^1.312 ^2.974 ^5.571 0 0 0 0.01 1 force
particle explosion ^2.029 ^2.157 ^5.714 0 0 0 0.01 1 force
particle explosion ^2.271 ^1.069 ^5.857 0 0 0 0.01 1 force

playsound minecraft:block.fire.ambient neutral @a[distance=..20] ~ ~ ~ 2 1 1
playsound minecraft:block.fire.extinguish neutral @a[distance=..20] ~ ~ ~ 2 2 1
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 1 1
execute at @s[nbt={OnGround:0b}] run particle sweep_attack ~ ~1.25 ~ 0.5 0.5 0.5 0 10 force
scoreboard players set @s kits.raycastTick3 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/guts/cannon/raycast
tag @s add GutsPivotSwing
scoreboard players set @s kits.ability3CD 0
