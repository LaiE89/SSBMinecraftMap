scoreboard players add @s kits.timer 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] run function kits:char/cynthia/lucario/auraspheredamage
execute unless block ~ ~1.5 ~ #kits:passable run function kits:char/cynthia/lucario/auraspheredamage
execute positioned ~ ~1.5 ~ run function kits:char/cynthia/lucario/aurasphereparticles

tp @s[scores={kits.timer=..19}] ^ ^ ^0.7
execute at @s[scores={kits.timer=20..}] anchored eyes facing entity @e[type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth,sort=nearest,limit=1] feet positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.7 ~ ~
