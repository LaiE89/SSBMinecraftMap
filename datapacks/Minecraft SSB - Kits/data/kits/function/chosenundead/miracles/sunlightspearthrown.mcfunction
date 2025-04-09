execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!ChosenUndead,tag=!InLabyrinth] run function kits:chosenundead/miracles/sunlightspeardamage
execute unless block ~ ~1.5 ~ air run function kits:chosenundead/miracles/sunlightspeardamage
execute positioned ~ ~1.5 ~ run function kits:chosenundead/miracles/sunlightspearparticles

tp @s ^ ^ ^1
