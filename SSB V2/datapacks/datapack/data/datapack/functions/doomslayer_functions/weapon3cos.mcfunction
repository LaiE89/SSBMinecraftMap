summon armor_stand ^ ^ ^0.5 {Tags:["bfg","projectile"],DisabledSlots:2039583,NoGravity:1b,Invisible:1,Small:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:lime_glazed_terracotta",Count:1b}]}
particle minecraft:sneeze ^ ^1.5 ^2 0.5 0.5 0.5 0.5 100
particle minecraft:flash ~ ~ ~
playsound minecraft:entity.generic.explode neutral @a[distance=..80] ~ ~ ~ 3 1 1
playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..80] ~ ~ ~ 3 1.5 1
tp @s ~ ~ ~ facing ^ ^1 ^4
scoreboard players set @s Ability3CD 0