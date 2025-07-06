execute store result score @s kits.health4 run data get entity @e[type=!#kits:non_entity,tag=!Invincible,tag=!InLabyrinth,tag=!Zed,limit=1,sort=nearest] Health
execute store result score @s kits.health2 run attribute @e[type=!#kits:non_entity,tag=!Invincible,tag=!InLabyrinth,tag=!Zed,limit=1,sort=nearest] max_health get
execute store result score @s kits.health3 run scoreboard players operation @s kits.health2 /= @s kits.timer3
