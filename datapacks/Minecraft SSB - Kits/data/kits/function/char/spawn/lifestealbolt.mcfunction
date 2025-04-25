execute at @s[tag=lifestealbolt1] facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] eyes run tp @s ^0.5 ^ ^0.5 ~ ~
execute at @s[tag=lifestealbolt2] facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] eyes run tp @s ^-0.5 ^ ^0.5 ~ ~

execute if entity @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] run function kits:char/spawn/lifestealboltsdamage

particle sneeze ~ ~ ~ 0.1 0.1 0.1 0 10 force
