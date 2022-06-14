execute store result score @s Health4 run data get entity @e[type=!armor_stand,type=!area_effect_cloud,tag=!Zed,limit=1,sort=nearest] Health
execute store result score @s Health2 run attribute @e[type=!armor_stand,type=!area_effect_cloud,tag=!Zed,limit=1,sort=nearest] generic.max_health get
execute store result score @s Health3 run scoreboard players operation @s Health2 /= @s Timer3