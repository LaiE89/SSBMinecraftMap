execute store result score @s kits.timer run data get entity @s Age
tp @e[tag=EdwardCaged] ~ ~ ~
execute if score @s kits.timer matches 49.. run playsound minecraft:block.gilded_blackstone.break neutral @a[distance=..20] ~ ~ ~ 10 0 1
execute if score @s kits.timer matches 49.. run playsound minecraft:block.pointed_dripstone.land neutral @a[distance=..20] ~ ~ ~ 10 0 1
execute if score @s kits.timer matches 49.. run particle item{item:"stone"} ~ ~2 ~ 1 1 1 0.1 100 force
execute if score @s kits.timer matches 49.. run particle explosion ~ ~1 ~ 0 0 0 0 1 force
execute if score @s kits.timer matches 49.. run kill @e[type=minecraft:block_display,tag=EdwardCage]
execute if score @s kits.timer matches 49.. run tag @e[tag=EdwardCaged] remove EdwardCaged
