playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 10 0 1
scoreboard players set @s kits.raycastTick 0
execute positioned ~ ~1.5 ~ run function kits:char/doomfist/doomfistpassive6

scoreboard players reset @s kits.criterion.shiftOn
tag @s add DoomfistPunching
tag @s add DoomfistMax
tag @s remove DoomfistCharge
execute if entity @e[type=minecraft:area_effect_cloud,distance=..3,tag=rocketpunch] run function kits:char/doomfist/rocketpunchend2
scoreboard players set @s kits.ability1CD 0
