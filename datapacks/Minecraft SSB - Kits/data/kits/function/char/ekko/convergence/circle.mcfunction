particle minecraft:end_rod ^ ^ ^7 0 0 0 0 1 force
tp @s ~ ~ ~ ~10 ~
execute unless entity @s[y_rotation=0..9] at @s run function kits:char/ekko/convergence/circle
