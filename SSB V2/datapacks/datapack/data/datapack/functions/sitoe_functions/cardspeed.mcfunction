execute store result score @s x run data get entity @s Pos[0] 1000
execute store result score @s z run data get entity @s Pos[2] 1000

tp @s ^ ^ ^-1

execute store result score @s dx run data get entity @s Pos[0] 1000
execute store result score @s dz run data get entity @s Pos[2] 1000

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dz -= @s z

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s dx
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s dy

scoreboard players set @s[tag=!castedSitoeCardThrow] Timer2 0
tag @s[tag=!castedSitoeCardThrow] add castedSitoeCardThrow