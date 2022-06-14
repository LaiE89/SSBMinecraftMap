function datapack:pvp_functions/queue/killingthingsinlobby
execute if entity @a[tag=PlayerArena] unless entity @a[tag=Player2] run tellraw @p {"text":"A game had already started","bold":true,"color":"red"}
execute unless entity @a[tag=PlayerArena] if entity @a[tag=Player2] run tellraw @p {"text":"Player 2 is taken","bold":true,"color":"dark_blue"}
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player2] run scoreboard players set @p PVP_Lives 3
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player2] run give @p minecraft:golden_carrot 64
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player2] run tag @p add Player
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player2] run tag @p add Player2
execute unless entity @a[tag=PlayerArena] run tp @p[tag=Player2,x=-186,y=75,z=-29,dx=-12,dy=-3,dz=-10] -192 72 -43 facing -192 73 -48