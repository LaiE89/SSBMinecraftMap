execute store result score @s Timer6 run data get entity @s Age
scoreboard players operation @p[tag=Tracer] Timer6 > @s Timer6
execute if score @s Timer6 = @p[tag=Tracer] Timer6 run tag @s[tag=!TracerLatestRecall] add TracerLatestRecall