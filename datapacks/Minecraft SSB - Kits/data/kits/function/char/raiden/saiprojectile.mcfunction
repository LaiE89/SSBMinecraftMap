scoreboard players add @s kits.timer 1
tp @s[scores={kits.timer=..15}] ^ ^ ^1.5

execute at @p[tag=Raiden] as @s[scores={kits.timer=16..}] at @s facing entity @p[tag=Raiden] feet run teleport @s ^ ^ ^1.5
execute as @s[scores={kits.timer=16..}] if entity @p[tag=Raiden,distance=..2] run kill @s

execute positioned ~ ~1 ~ as @e[distance=..1.75,type=!#kits:non_entity,tag=!Invincible,tag=!Raiden,tag=!InLabyrinth] at @s run function kits:char/raiden/saihooked
execute at @s facing entity @p[tag=Raiden] feet run function kits:char/raiden/saiparticles
