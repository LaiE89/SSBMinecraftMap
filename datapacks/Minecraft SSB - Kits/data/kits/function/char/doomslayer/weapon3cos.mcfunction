summon armor_stand ^ ^ ^0.5 {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["bfg","projectile"],DisabledSlots:2039583,equipment:{head:{id:"minecraft:lime_glazed_terracotta",Count:1b}}}
particle sneeze ^ ^1.5 ^2 0.5 0.5 0.5 0.5 100 force
particle flash ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode neutral @a[distance=..80] ~ ~ ~ 3 1 1
playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..80] ~ ~ ~ 3 1.5 1
#tp @s ~ ~ ~ facing ^ ^1 ^4
scoreboard players add @s kits.timer 1
scoreboard players set @s kits.ability4CD 0
scoreboard players set @s kits.ability1CD 20
