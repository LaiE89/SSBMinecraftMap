function kits:char/2b/gravitycircle
tp @s ~ ~ ~ ~ ~20
execute unless entity @s[x_rotation=90] at @s run function kits:char/2b/gravitysphere
