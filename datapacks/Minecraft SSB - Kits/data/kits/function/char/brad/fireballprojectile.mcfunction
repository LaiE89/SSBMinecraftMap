execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Brad,tag=!InLabyrinth] at @s run function kits:char/brad/fireball
particle dust{color:[1.000,0.502,0.000],scale:0.75} ~ ~1.3 ~ 0.2 0.2 0.2 0.05 100 force

tp @s[tag=!castedBradsFireball] ~ ~ ~ facing entity @p[tag=Brad]
tp @s[tag=castedBradsFireball] ^ ^ ^-0.8
tag @s[tag=!castedBradsFireball] add castedBradsFireball
