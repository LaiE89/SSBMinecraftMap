scoreboard players add @s kits.timer 1
tp @s[scores={kits.timer=..15}] ^ ^ ^1.5

execute at @p[tag=Doomslayer] as @s[scores={kits.timer=16..}] at @s facing entity @p[tag=Doomslayer] feet run tp @s ^ ^ ^1.5
execute as @s[scores={kits.timer=16..}] if entity @p[tag=Doomslayer,distance=..2] run kill @s
#particle electric_spark ~ ~1 ~ 0 0 0 0 1 force
execute positioned ~ ~1 ~ as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] at @s run function kits:char/doomslayer/meathook/hookdamage
execute at @s facing entity @p[tag=Doomslayer] feet run function kits:char/doomslayer/meathook/particles

