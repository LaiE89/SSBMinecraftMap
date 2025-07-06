execute if entity @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!ChosenUndead,tag=!InLabyrinth] run function kits:char/chosenundead/miracles/sunlightspeardamage
execute unless block ~ ~1.5 ~ #kits:passable run function kits:char/chosenundead/miracles/sunlightspeardamage
execute positioned ~ ~1.5 ~ run function kits:char/chosenundead/miracles/sunlightspearparticles

tp @s ^ ^ ^1.5
