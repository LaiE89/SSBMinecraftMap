execute at @s anchored eyes facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Laieth,tag=!InLabyrinth] feet positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^0.5 ^ ^0.5 ~ ~
particle soul_fire_flame ~ ~1.5 ~ 0 0 0 0.01 5 force
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Laieth,tag=!InLabyrinth] at @s run function kits:char/laieth/teleportdamage
