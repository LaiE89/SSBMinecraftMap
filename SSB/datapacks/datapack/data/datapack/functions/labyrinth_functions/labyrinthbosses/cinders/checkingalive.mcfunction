execute if entity @a[tag=LabyrinthCinder,scores={BossTimer=0}] run scoreboard players set @s BossTimer 0
execute unless entity @a[tag=LabyrinthCinder,scores={BossTimer=0}] run scoreboard players set @s BossTimer -1
kill @e[type=item,x=-5012,y=144,z=126,dx=-67,dy=-48,dz=48]
tag @s add LabyrinthCinder