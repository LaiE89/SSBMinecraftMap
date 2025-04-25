tp @s[tag=!pivotswing] ~ ~ ~ ~20 ~
tp @s[tag=pivotswing] ~ ~ ~ ~-36 ~


execute positioned ~ ~1 ~ run function kits:char/guts/dragonslayerparticles2

scoreboard players set @s kits.raycastTick 0
scoreboard players set @s kits.raycastTick2 0
execute at @s positioned ^ ^ ^1 run function kits:char/guts/gutspassive2
execute at @s positioned ^ ^ ^1 run function kits:char/guts/gutspassive3

tag @e[tag=GutsCleaved] remove GutsCleaved
