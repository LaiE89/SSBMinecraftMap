# If Cinders is already alive since there are 2 players
execute as @a[tag=InLabyrinth,tag=!LabyrinthCinder,x=-5012,y=144,z=126,dx=-67,dy=-48,dz=48] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/checkingalive

# When cinders Dies
# If there are two or more players in the room
execute unless entity @e[type=zombie,tag=Cinder] if entity @a[tag=LabyrinthCinder,scores={BossTimer=1..}] if entity @a[tag=LabyrinthCinder,scores={BossTimer=-1}] run scoreboard players set @a[tag=LabyrinthCinder] BossTimer 20
execute unless entity @e[type=zombie,tag=Cinder] run function datapack:labyrinth_functions/labyrinthbosses/cinders/checkingdead

# Summoning Cinders
execute unless entity @e[type=zombie,tag=Cinder] if entity @a[tag=LabyrinthCinder,scores={BossTimer=0},limit=1] run function datapack:labyrinth_functions/labyrinthbosses/cinders/summoning

# If player leaves
bossbar set minecraft:cindersboss players @a[gamemode=!spectator,x=-5012,y=144,z=126,dx=-67,dy=-48,dz=48,tag=LabyrinthCinder]
execute as @a[tag=LabyrinthCinder] at @s unless entity @s[x=-5012,y=144,z=126,dx=-67,dy=-48,dz=48] run function datapack:labyrinth_functions/labyrinthbosses/cinders/playerleave
execute as @e[type=zombie,tag=Cinder] at @s unless entity @a[tag=LabyrinthCinder] run kill @s

# Bossbar
execute store result bossbar minecraft:cindersboss value run data get entity @e[type=zombie,tag=Cinder,limit=1] Health

### Abilities ###
execute as @e[type=zombie,tag=Cinder] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/cinderpassive 
execute as @e[type=zombie,tag=Cinder,scores={Ability2CD=120..}] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/randommove
execute as @e[type=zombie,tag=Cinder,scores={Timer=1}] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/ability2
execute as @e[type=zombie,tag=Cinder,scores={Timer=2}] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/ability3
execute as @e[type=zombie,tag=Cinder,scores={Timer=3}] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/ability4
scoreboard players reset @e[type=zombie,tag=Cinder,scores={Ability2CD=120..}] Ability2CD

execute if entity @e[type=area_effect_cloud,tag=cinderbeyblade] as @e[type=area_effect_cloud,tag=cinderbeyblade] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/beybladeeffects
execute as @e[type=zombie,tag=Cinder,scores={Ability1CD=370}] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/ability1
execute as @e[type=zombie,tag=Cinder,scores={Ability1CD=400}] at @s run function datapack:labyrinth_functions/labyrinthbosses/cinders/ability1

# Boss music
execute if entity @e[type=zombie,tag=Cinder] run scoreboard players add @a[tag=LabyrinthCinder] BossMusicTimer 1
execute as @a[tag=LabyrinthCinder,scores={BossMusicTimer=1}] at @s run playsound minecraft:boss.omegaruby neutral @s ~ ~ ~ 0.25 1 0.25
scoreboard players reset @a[tag=LabyrinthCinder,scores={BossMusicTimer=6000..}] BossMusicTimer