tp @s[tag=!GutsPivotSwing] ~ ~ ~ ~20 ~
tp @s[tag=GutsPivotSwing] ~ ~ ~ ~-36 ~


execute positioned ~ ~1 ~ run function kits:char/guts/dragonslayerparticles

scoreboard players set @s kits.raycastTick 0
execute at @s positioned ^ ^ ^1 run function kits:char/guts/cleave/raycast
