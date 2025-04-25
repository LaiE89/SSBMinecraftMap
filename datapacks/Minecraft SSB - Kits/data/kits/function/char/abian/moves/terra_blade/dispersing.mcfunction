# Execute at terra blade when dispersing
execute positioned as @s anchored feet facing entity @e[type=!#kits:non_entity,limit=1,sort=nearest,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^5 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1.5 ~ ~
execute unless entity @e[type=!#kits:non_entity,limit=1,sort=nearest,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] positioned as @s run tp @s ^ ^ ^1.5
