execute if entity @s[tag=!DoomslayerArmorPackDelay] as @p[distance=..1.5,tag=!Doomslayer,tag=InLabyrinth] at @s run function kits:char/doomslayer/meathook/collect
execute if entity @s[tag=!DoomslayerArmorPackDelay] as @p[distance=..1.5,tag=Doomslayer] at @s run function kits:char/doomslayer/meathook/collect
particle dust{color:[0.000,1.000,1.000],scale:0.5} ~ ~0.05 ~ 0 0 0 0 1 force
