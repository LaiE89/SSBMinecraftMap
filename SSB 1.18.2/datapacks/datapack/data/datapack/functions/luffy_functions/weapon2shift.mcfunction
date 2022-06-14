playsound minecraft:item.crossbow.quick_charge_1 neutral @a[distance=..20] ~ ~ ~ 10 2 1
summon armor_stand ~ ~ ~ {Tags:["LuffyGrab","projectile"],NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:white_terracotta",Count:1b}]}
tp @e[type=armor_stand,tag=LuffyGrab] @s
scoreboard players set @s Ability4CD 0