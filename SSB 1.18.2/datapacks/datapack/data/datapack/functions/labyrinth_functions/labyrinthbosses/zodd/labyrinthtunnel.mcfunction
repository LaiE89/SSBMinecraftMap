# If Zodd is already alive since there are 2 players
execute as @a[tag=InLabyrinth,tag=!LabyrinthTunnel,x=-5192,y=34,z=202,dx=-38,dy=-5,dz=-100] at @s run function datapack:labyrinth_functions/labyrinthbosses/zodd/checkingalive

# When Zodd Dies
# If there are two or more players in the room
execute unless entity @e[type=zombie,tag=Zodd] if entity @a[tag=LabyrinthTunnel,scores={BossTimer=1..}] if entity @a[tag=LabyrinthTunnel,scores={BossTimer=-1}] run scoreboard players set @a[tag=LabyrinthTunnel] BossTimer 20
execute unless entity @e[type=zombie,tag=Zodd] run function datapack:labyrinth_functions/labyrinthbosses/zodd/checkingdead

# Summoning Zodd
execute unless entity @e[type=zombie,tag=Zodd] if entity @a[tag=LabyrinthTunnel,scores={BossTimer=0},limit=1] run function datapack:labyrinth_functions/labyrinthbosses/zodd/summoning

# If player leaves
bossbar set minecraft:zoddboss players @a[gamemode=!spectator,x=-5192,y=34,z=202,dx=-38,dy=-5,dz=-100,tag=LabyrinthTunnel]
execute as @a[tag=LabyrinthTunnel] at @s unless entity @s[x=-5192,y=34,z=202,dx=-38,dy=-5,dz=-100] run function datapack:labyrinth_functions/labyrinthbosses/zodd/playerleave
execute as @e[type=zombie,tag=Zodd] at @s unless entity @a[tag=LabyrinthTunnel] run kill @s

# Bossbar
execute store result bossbar minecraft:zoddboss value run data get entity @e[type=zombie,tag=Zodd,limit=1] Health

# Zodd abilities
scoreboard players add @e[type=zombie,tag=Zodd] Ability1CD 1
execute as @e[type=zombie,tag=Zodd,scores={Ability1CD=200}] at @s run function datapack:labyrinth_functions/labyrinthbosses/zodd/ability1
execute as @e[type=zombie,tag=Zodd,scores={Ability1CD=220..}] at @s run function datapack:labyrinth_functions/labyrinthbosses/zodd/ability1

execute as @e[type=area_effect_cloud,tag=CleaverSwing] at @s run function datapack:labyrinth_functions/labyrinthbosses/zodd/cleaveparticles

effect give @a[tag=ZoddBleeding] wither 1 9 true
effect give @a[tag=ZoddBleeding] slowness 1 1 true
execute at @a[tag=ZoddBleeding] run particle minecraft:block minecraft:redstone_block ~ ~0.5 ~ 0.4 1 0.4 0 10

execute if entity @a[tag=ZoddBleeding] run scoreboard players add @e[type=zombie,tag=Zodd] Timer 1
execute if entity @e[type=zombie,tag=Zodd,scores={Timer=50..}] run tag @a[tag=ZoddBleeding] remove ZoddBleeding
scoreboard players reset @e[type=zombie,tag=Zodd,scores={Timer=50..}] Timer

scoreboard players add @e[type=zombie,tag=Zodd] Ability2CD 1
execute as @e[type=zombie,tag=Zodd,scores={Ability2CD=300}] at @s run function datapack:labyrinth_functions/labyrinthbosses/zodd/ability2

# Boss music
execute if entity @e[type=zombie,tag=Zodd] run scoreboard players add @a[tag=LabyrinthTunnel] BossMusicTimer 1
execute as @a[tag=LabyrinthTunnel,scores={BossMusicTimer=1}] at @s run playsound minecraft:boss.aria neutral @s ~ ~ ~ 0.25 1 0.25
scoreboard players reset @a[tag=LabyrinthTunnel,scores={BossMusicTimer=5700..}] BossMusicTimer