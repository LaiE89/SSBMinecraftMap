# If Pyramid Head is already alive since there are 2 players
execute as @a[tag=InLabyrinth,tag=!LabyrinthGym,x=-5121,y=59,z=30,dx=-44,dy=34,dz=-49] at @s run function datapack:labyrinth_functions/labyrinthbosses/pyramidhead/checkingalive

# When Pyramid Head Dies
# If there are two or more players in the room
execute unless entity @e[type=zombie,tag=PyramidHead] if entity @a[tag=LabyrinthGym,scores={BossTimer=1..}] if entity @a[tag=LabyrinthGym,scores={BossTimer=-1}] run scoreboard players set @a[tag=LabyrinthGym] BossTimer 20
execute unless entity @e[type=zombie,tag=PyramidHead] run function datapack:labyrinth_functions/labyrinthbosses/pyramidhead/checkingdead

# Summoning Mobs
execute unless entity @e[type=zombie,tag=PyramidHead] if entity @a[tag=LabyrinthGym,scores={BossTimer=0},limit=1] run function datapack:labyrinth_functions/labyrinthbosses/pyramidhead/summoning
execute unless entity @e[type=skeleton,tag=GymHanging,distance=..3,x=-5129,y=88,z=26] if entity @a[tag=LabyrinthGym] run summon minecraft:skeleton -5129 88 26 {CustomName:"\"Dinnerbone\"",NoGravity:1b,NoAI:1b,Health:999,Attributes:[{Name:"generic.max_health",Base:999},{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,Invulnerable:1,Tags:["GymHanging"],Team:LabyrinthMob}
execute unless entity @e[type=skeleton,tag=GymHanging,distance=..3,x=-5142,y=86,z=16] if entity @a[tag=LabyrinthGym] run summon minecraft:skeleton -5142 86 16 {CustomName:"\"Dinnerbone\"",NoGravity:1b,NoAI:1b,Health:999,Attributes:[{Name:"generic.max_health",Base:999},{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,Invulnerable:1,Tags:["GymHanging"],Team:LabyrinthMob}
execute unless entity @e[type=skeleton,tag=GymHanging,distance=..3,x=-5136,y=90,z=1] if entity @a[tag=LabyrinthGym] run summon minecraft:skeleton -5136 90 1 {CustomName:"\"Dinnerbone\"",NoGravity:1b,NoAI:1b,Health:999,Attributes:[{Name:"generic.max_health",Base:999},{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,Invulnerable:1,Tags:["GymHanging"],Team:LabyrinthMob}
execute unless entity @e[type=skeleton,tag=GymHanging,distance=..3,x=-5126,y=89,z=-14] if entity @a[tag=LabyrinthGym] run summon minecraft:skeleton -5126 89 -14 {CustomName:"\"Dinnerbone\"",NoGravity:1b,NoAI:1b,Health:999,Attributes:[{Name:"generic.max_health",Base:999},{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,Invulnerable:1,Tags:["GymHanging"],Team:LabyrinthMob}
execute unless entity @e[type=skeleton,tag=GymHanging,distance=..3,x=-5142,y=86,z=16] if entity @a[tag=LabyrinthGym] run summon minecraft:skeleton -5142 86 16 {CustomName:"\"Dinnerbone\"",NoGravity:1b,NoAI:1b,Health:999,Attributes:[{Name:"generic.max_health",Base:999},{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,Invulnerable:1,Tags:["GymHanging"],Team:LabyrinthMob}
execute unless entity @e[type=skeleton,tag=GymHanging,distance=..3,x=-5150,y=88,z=-8] if entity @a[tag=LabyrinthGym] run summon minecraft:skeleton -5150 88 -8 {CustomName:"\"Dinnerbone\"",NoGravity:1b,NoAI:1b,Health:999,Attributes:[{Name:"generic.max_health",Base:999},{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,Invulnerable:1,Tags:["GymHanging"],Team:LabyrinthMob}
execute unless entity @e[type=skeleton,tag=GymHanging,distance=..3,x=-5162,y=87,z=7] if entity @a[tag=LabyrinthGym] run summon minecraft:skeleton -5162 87 7 {CustomName:"\"Dinnerbone\"",NoGravity:1b,NoAI:1b,Health:999,Attributes:[{Name:"generic.max_health",Base:999},{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,Invulnerable:1,Tags:["GymHanging"],Team:LabyrinthMob}
execute unless entity @e[type=skeleton,tag=GymHanging,distance=..3,x=-5158,y=89,z=27] if entity @a[tag=LabyrinthGym] run summon minecraft:skeleton -5158 89 27 {CustomName:"\"Dinnerbone\"",NoGravity:1b,NoAI:1b,Health:999,Attributes:[{Name:"generic.max_health",Base:999},{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,Invulnerable:1,Tags:["GymHanging"],Team:LabyrinthMob}

# If player leaves
bossbar set minecraft:pyramidheadboss players @a[gamemode=!spectator,x=-5121,y=59,z=30,dx=-44,dy=34,dz=-49,tag=LabyrinthGym]
execute as @a[tag=LabyrinthGym] at @s unless entity @s[x=-5121,y=59,z=30,dx=-44,dy=34,dz=-49] run function datapack:labyrinth_functions/labyrinthbosses/pyramidhead/playerleave
execute as @e[type=zombie,tag=PyramidHead] at @s unless entity @a[tag=LabyrinthGym] run kill @s
execute as @e[type=skeleton,tag=GymHanging] at @s unless entity @a[tag=LabyrinthGym] run kill @s

# Setting up bossbar
execute store result bossbar minecraft:pyramidheadboss value run data get entity @e[type=zombie,tag=PyramidHead,limit=1] Health

# Pyramidhead abilities
scoreboard players add @e[type=zombie,tag=PyramidHead] Timer 1
execute as @e[type=zombie,tag=PyramidHead,scores={Timer=300..}] at @s run function datapack:labyrinth_functions/labyrinthbosses/pyramidhead/ability1

scoreboard players add @e[type=zombie,tag=PyramidHead] Timer2 1
execute as @e[type=zombie,tag=PyramidHead,scores={Timer2=200..}] at @s run function datapack:labyrinth_functions/labyrinthbosses/pyramidhead/ability2

scoreboard players add @e[type=zombie,tag=PyramidHead] Timer5 1
execute as @e[type=zombie,tag=PyramidHead,scores={Timer5=150..}] at @s run function datapack:labyrinth_functions/labyrinthbosses/pyramidhead/ability3

scoreboard players add @e[type=zombie,tag=PyramidHead] Timer3 1
execute at @e[type=zombie,tag=PyramidHead,scores={Timer3=30..}] run playsound minecraft:block.grindstone.use neutral @a[distance=..15] ~ ~ ~ 2 0 1
scoreboard players reset @e[type=zombie,tag=PyramidHead,scores={Timer3=30..}] Timer3

# Boss music
execute if entity @e[type=zombie,tag=PyramidHead] run scoreboard players add @a[tag=LabyrinthGym] BossMusicTimer 1
execute as @a[tag=LabyrinthGym,scores={BossMusicTimer=1}] at @s run playsound minecraft:boss.higurashi neutral @s ~ ~ ~ 0.25 1 0.25
scoreboard players reset @a[tag=LabyrinthGym,scores={BossMusicTimer=5260..}] BossMusicTimer

# Killing players that fall to the void
execute as @a[tag=LabyrinthGym] at @s run execute if block ~ ~-1 ~ minecraft:light_gray_stained_glass run execute at @s run function datapack:damage3
execute as @e[type=zombie,tag=PyramidHead] at @s run execute if block ~ ~-1 ~ minecraft:light_gray_stained_glass run tp @s -5145 72 4
