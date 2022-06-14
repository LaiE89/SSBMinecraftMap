tag @s add LuffyUsingPistol
playsound minecraft:item.crossbow.quick_charge_3 neutral @a[distance=..15] ~ ~ ~ 3 0 1
summon armor_stand ~ ~ ~ {Tags:["LuffyPistol","ChargingLuffyPistol","projectile"],NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:white_terracotta",Count:1b}]}
scoreboard players set @s Ability1CD 0