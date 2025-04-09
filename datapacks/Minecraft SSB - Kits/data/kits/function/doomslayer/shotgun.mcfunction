particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~1 ~ 0 0 0 0 1 force
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] run function kits:doomslayer/shotgunhit

tp @s[tag=facingsupershotgun] ^ ^ ^-1.5
tp @s[tag=!facingsupershotgun] ~ ~ ~ facing entity @p[tag=Doomslayer]
tag @s[tag=!facingsupershotgun] add facingsupershotgun
