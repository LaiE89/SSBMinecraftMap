execute if entity @a[tag=LabyrinthTunnel,scores={BossTimer=0}] run scoreboard players set @s BossTimer 0
execute unless entity @a[tag=LabyrinthTunnel,scores={BossTimer=0}] run scoreboard players set @s BossTimer -1
kill @e[type=item,x=-5192,y=35,z=202,dx=-38,dy=-6,dz=-100]
tag @s add LabyrinthTunnel