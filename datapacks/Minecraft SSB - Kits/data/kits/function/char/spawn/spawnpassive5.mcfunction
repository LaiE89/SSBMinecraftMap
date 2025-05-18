execute as @e[distance=..1,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] at @s run function kits:char/spawn/chainsdamage

particle dust{color:[0.200,0.200,0.200],scale:0.35} ~ ~1 ~ 0.05 0.05 0.05 1 10 force
execute positioned ~ ~-1.35 ~ unless entity @a[distance=..1.5,tag=Spawn] positioned ^ ^ ^0.5 positioned ~ ~1.35 ~ run function kits:char/spawn/spawnpassive5
