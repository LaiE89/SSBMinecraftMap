function datapack:pvp_functions/queue/killingthingsinlobby
execute if entity @a[tag=PlayerArena] unless entity @a[tag=Player3] run tellraw @p {"text":"A game had already started","bold":true,"color":"red"}
execute unless entity @a[tag=PlayerArena] if entity @a[tag=Player3] run tellraw @p {"text":"Player 3 is taken","bold":true,"color":"green"}
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player3] run scoreboard players set @p Lives 3
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player3] run give @p minecraft:golden_carrot 64
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player3] run tag @p add Player
execute unless entity @a[tag=PlayerArena] unless entity @a[tag=Player3] run tag @p add Player3
execute unless entity @a[tag=PlayerArena] run tp @p[tag=Player3,x=-186,y=75,z=-29,dx=-12,dy=-3,dz=-10] -192 72 -43 facing -192 73 -48