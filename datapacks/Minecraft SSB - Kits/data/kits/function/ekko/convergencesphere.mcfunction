function kits:ekko/convergencecircle
tp @s ~ ~ ~ ~ ~10
execute unless entity @s[x_rotation=90] at @s run function kits:ekko/convergencesphere
