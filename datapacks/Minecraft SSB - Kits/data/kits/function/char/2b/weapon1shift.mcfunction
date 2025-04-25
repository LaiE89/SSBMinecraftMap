kill @e[type=armor_stand,tag=2bhologram]
scoreboard players reset @s kits.timer2
scoreboard players reset @s kits.timer
effect give @s minecraft:resistance 1 9 true
tag @s add 2BEvasion
particle minecraft:cloud ~ ~1.25 ~ 0 0 0 0.1 50
playsound minecraft:entity.player.attack.nodamage neutral @a[distance=..20] ~ ~ ~ 2 0.75 1
scoreboard players set @s kits.ability2CD 0
