scoreboard players set @s kits.raycastTick 0 
execute at @s positioned ~ ~1.5 ~ run function kits:mob/mobpassive2
particle flash ~ ~ ~ 0 0 0 0 20 force
scoreboard players set @s kits.ability4CD 0
