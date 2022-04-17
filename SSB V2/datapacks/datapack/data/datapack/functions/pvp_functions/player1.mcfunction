function datapack:pvp_functions/queue/killingthingsinlobby
execute if entity @a[tag=PlayerArena] unless entity @a[tag=Player1] run tellraw @p {"text":"A game had already started","bold":true,"color":"red"}
execute unless entity @a[tag=PlayerArena] if entity @a[tag=Player1] run tellraw @p {"text":"Player 1 is taken","bold":true,"color":"dark_red"}
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player1] run scoreboard players set @p Lives 3
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player1] run give @p minecraft:golden_carrot 64
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player1] run tag @p add Player
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player1] run tag @p add Player1
execute unless entity @a[tag=PlayerArena] run tp @p[tag=Player1,x=-186,y=75,z=-29,dx=-12,dy=-3,dz=-10] -192 72 -43 facing -192 73 -48