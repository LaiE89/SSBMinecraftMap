execute at @s positioned ~ ~ ~ facing entity @p[tag=Spawn] feet run function kits:char/spawn/spawnpassive5

scoreboard players add @s kits.timer 1
execute at @s[scores={kits.timer=..15}] if entity @e[distance=..20,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] feet run tp @s ^ ^ ^0.8 facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth]
execute at @s[scores={kits.timer=..15}] unless entity @e[distance=..20,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] run tp @s ^ ^ ^0.8
execute at @s[scores={kits.timer=16..}] facing entity @p[tag=Spawn] feet run tp @s ^ ^ ^1 facing entity @p[tag=Spawn]

execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] at @s run function kits:char/spawn/chainsdamage

execute as @s[scores={kits.timer=16..}] at @s if entity @p[tag=Spawn,distance=..1] run kill @s
