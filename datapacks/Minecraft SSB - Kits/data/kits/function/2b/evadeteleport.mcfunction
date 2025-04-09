particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1
execute if entity @e[type=armor_stand,tag=2bhologram,tag=!2bhologramcloser] as @e[type=armor_stand,tag=2bhologram,tag=!2bhologramcloser,sort=nearest,limit=1] at @s run tp @p[tag=2B] ~ ~ ~ facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!2B,tag=!InLabyrinth]
execute unless entity @e[type=armor_stand,tag=2bhologram,tag=!2bhologramcloser] as @e[type=armor_stand,tag=2bhologram,tag=2bhologramcloser,sort=nearest,limit=1] at @s run tp @p[tag=2B] ~ ~ ~ facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!2B,tag=!InLabyrinth]
kill @e[type=armor_stand,tag=2bhologram]
attribute @s minecraft:knockback_resistance base set 0
effect clear @s resistance
scoreboard players set @s kits.ability2CD 80
scoreboard players reset @s kits.timer2
