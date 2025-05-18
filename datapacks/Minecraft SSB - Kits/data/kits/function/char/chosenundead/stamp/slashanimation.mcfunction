execute if entity @s[x_rotation=-40..90,tag=!ChosenUndeadStampSlashFlipped] positioned ~ ~-1 ~ rotated as @s run tp @p[tag=ChosenUndead] ~ ~ ~ ~ ~
execute unless entity @s[x_rotation=-40..90,tag=!ChosenUndeadStampSlashFlipped] positioned ~ ~-1 ~ run tp @p[tag=ChosenUndead] ~ ~ ~

execute positioned ^ ^ ^1 run function kits:char/chosenundead/stamp/claymoreparticles
scoreboard players set @s kits.raycastTick 0
function kits:char/chosenundead/stamp/raycastdamage
#execute positioned ^ ^ ^3 as @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!ChosenUndead,tag=!InLabyrinth,tag=!ChosenUndeadStampSlashed] at @s run function kits:char/chosenundead/stamp/slashdamage

tp @s[tag=ChosenUndeadStampSlashFlipped] ~ ~ ~ ~ ~25
tp @s[tag=!ChosenUndeadStampSlashFlipped] ~ ~ ~ ~ ~-25

execute if entity @s[x_rotation=-90] run tag @s add ChosenUndeadStampSlashFlipped
execute if entity @s[x_rotation=-90] run tp @s ~ ~ ~ ~180 ~
