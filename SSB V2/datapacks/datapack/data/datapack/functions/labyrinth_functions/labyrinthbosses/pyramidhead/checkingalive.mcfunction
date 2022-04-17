execute if entity @a[tag=LabyrinthGym,scores={BossTimer=0}] run scoreboard players set @s BossTimer 0
execute unless entity @a[tag=LabyrinthGym,scores={BossTimer=0}] run scoreboard players set @s BossTimer -1
kill @e[type=item,x=-5121,y=59,z=30,dx=-44,dy=34,dz=-49]
tag @s add LabyrinthGym