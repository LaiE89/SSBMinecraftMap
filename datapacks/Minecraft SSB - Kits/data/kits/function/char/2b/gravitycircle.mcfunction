particle minecraft:squid_ink ^ ^ ^4 0 0 0 0 1
particle minecraft:witch ^ ^ ^1 0 0 0 0 1
tp @s ~ ~ ~ ~20 ~
execute unless entity @s[y_rotation=0..19] at @s run function kits:char/2b/gravitycircle
