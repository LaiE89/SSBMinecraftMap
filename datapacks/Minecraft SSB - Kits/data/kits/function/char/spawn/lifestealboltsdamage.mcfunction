particle explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:block.end_portal.spawn neutral @a[distance=..40] ~ ~ ~ 0.5 2 0.5
damage @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth,sort=nearest,limit=1] 6 bypass:player_attack by @p[tag=Spawn]
effect give @p[tag=Spawn] minecraft:regeneration 1 3 true
kill @s
