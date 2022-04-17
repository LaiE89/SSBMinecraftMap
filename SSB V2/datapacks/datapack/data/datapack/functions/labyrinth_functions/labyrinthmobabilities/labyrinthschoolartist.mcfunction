scoreboard players add @e[type=skeleton,tag=labyrinthschoolartist] Timer 1

execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=75}] at @s positioned ~-10 ~-1 ~-10 run effect give @a[dx=20,dy=2,dz=20] minecraft:slowness 3 4 true
execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=75}] at @s positioned ~-10 ~-1 ~-10 run execute at @a[dx=20,dy=2,dz=20] run particle minecraft:falling_water ~ ~1.5 ~ 0.2 1 0.2 0 200
execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=75}] at @s positioned ~-10 ~-1 ~-10 run execute at @a[dx=20,dy=2,dz=20] run playsound minecraft:entity.generic.splash neutral @a[distance=..10] ~ ~ ~ 10 0.8 1

execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=150}] at @s positioned ~-10 ~-1 ~-10 run effect give @a[dx=20,dy=2,dz=20] minecraft:instant_damage
execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=150}] at @s positioned ~-10 ~-1 ~-10 run execute at @a[dx=20,dy=2,dz=20] run particle minecraft:falling_lava ~ ~1.5 ~ 0.2 1 0.2 0 200
execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=150}] at @s positioned ~-10 ~-1 ~-10 run execute at @a[dx=20,dy=2,dz=20] run playsound minecraft:entity.generic.splash neutral @a[distance=..10] ~ ~ ~ 10 0.8 1

execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=225}] at @s positioned ~-10 ~-1 ~-10 run effect give @a[dx=20,dy=2,dz=20] minecraft:blindness 3 0 true
execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=225}] at @s positioned ~-10 ~-1 ~-10 run execute at @a[dx=20,dy=2,dz=20] run particle minecraft:falling_obsidian_tear ~ ~1.5 ~ 0.2 1 0.2 0 200
execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=225}] at @s positioned ~-10 ~-1 ~-10 run execute at @a[dx=20,dy=2,dz=20] run playsound minecraft:entity.generic.splash neutral @a[distance=..10] ~ ~ ~ 10 0.8 1

execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=300}] at @s positioned ~-10 ~-1 ~-10 run effect give @a[dx=20,dy=2,dz=20] minecraft:poison 3 4 true
execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=300}] at @s positioned ~-10 ~-1 ~-10 run execute at @a[dx=20,dy=2,dz=20] run particle minecraft:falling_honey ~ ~1.5 ~ 0.2 1 0.2 0 200
execute as @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=300}] at @s positioned ~-10 ~-1 ~-10 run execute at @a[dx=20,dy=2,dz=20] run playsound minecraft:entity.generic.splash neutral @a[distance=..10] ~ ~ ~ 10 0.8 1

scoreboard players reset @e[type=skeleton,tag=labyrinthschoolartist,scores={Timer=300..}] Timer