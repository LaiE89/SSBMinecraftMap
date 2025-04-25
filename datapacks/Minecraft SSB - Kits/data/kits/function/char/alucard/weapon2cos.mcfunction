particle smoke ~ ~1 ~ 0.4 1 0.4 0 100 force
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/alucard/alucardpassive3
scoreboard players remove @s kits.timer2 3
scoreboard players set @s kits.ability4CD 0
