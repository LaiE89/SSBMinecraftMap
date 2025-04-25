function kits:char/arcueid/ripapartparticles
execute as @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] at @s run effect give @s[type=!minecraft:player] minecraft:weakness 1 1 true
execute as @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Arcueid]
execute positioned as @e[limit=1,sort=nearest,distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] rotated ~ 0 run function kits:char/arcueid/arcueidpassive3
