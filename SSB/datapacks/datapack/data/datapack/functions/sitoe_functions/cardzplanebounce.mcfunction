scoreboard players set @p[tag=Sitoe] Timer3 18000
execute store result score @p[tag=Sitoe] Timer4 run data get entity @s Rotation[0] 100.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation @p[tag=Sitoe] Timer3 -= @p[tag=Sitoe] Timer4