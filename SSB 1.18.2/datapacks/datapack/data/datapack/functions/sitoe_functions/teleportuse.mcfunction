particle minecraft:flash ~ ~1 ~ 0 0 0 0 10
particle minecraft:dust 0 0 0 10 ~ ~5 ~ 0 3 0 0 100
playsound minecraft:entity.enderman.teleport neutral @a[distance=..30] ~ ~ ~ 10 1 1
summon armor_stand ~ ~ ~ {Tags:["SitoeBolt","projectile"],Invisible:1b,NoGravity:1b,Marker:1b,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:warped_wart_block",Count:1b}]}
scoreboard players set @s RaycastTimer2 0
execute at @s positioned ~ ~1.5 ~ run function datapack:sitoe_functions/sitoepassive4