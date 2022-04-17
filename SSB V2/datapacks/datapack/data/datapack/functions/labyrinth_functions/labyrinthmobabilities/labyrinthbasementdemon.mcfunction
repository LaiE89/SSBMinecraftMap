scoreboard players add @e[type=skeleton,tag=labyrinthbasementdemon] Timer 1
execute as @e[type=skeleton,tag=labyrinthbasementdemon,scores={Timer=100..}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[type=skeleton,tag=labyrinthbasementdemon,scores={Timer=100..}] at @s run summon armor_stand ^ ^ ^1 {Tags:["labyrinthbasementdemonprojectile","projectile"],NoGravity:1b,Invisible:1,Invulnerable:1}
execute as @e[type=skeleton,tag=labyrinthbasementdemon,scores={Timer=100..}] at @s run scoreboard players set @s Timer 1

execute as @e[tag=labyrinthbasementdemonprojectile,type=armor_stand,tag=!castedlabyrinthbasementdemonprojectile] at @s run tp @s ~ ~ ~ facing entity @e[tag=labyrinthbasementdemon,limit=1,sort=nearest]
tag @e[tag=labyrinthbasementdemonprojectile,type=armor_stand,tag=!castedlabyrinthbasementdemonprojectile] add castedlabyrinthbasementdemonprojectile
execute as @e[tag=labyrinthbasementdemonprojectile,type=armor_stand] at @s run tp @s ^ ^ ^-0.8
execute as @e[tag=labyrinthbasementdemonprojectile,type=armor_stand] at @s run execute as @a[distance=..2] at @s run function datapack:damage1
execute as @e[tag=labyrinthbasementdemonprojectile,type=armor_stand] at @s run execute as @a[distance=..2] at @s run playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 1 1
execute as @e[tag=labyrinthbasementdemonprojectile,type=armor_stand] at @s run execute as @a[distance=..2] at @s run particle minecraft:explosion ~ ~1 ~
execute as @e[tag=labyrinthbasementdemonprojectile,type=armor_stand] at @s run execute as @a[distance=..2] at @s run kill @e[type=armor_stand,tag=labyrinthbasementdemonprojectile]
execute as @e[tag=labyrinthbasementdemonprojectile,type=armor_stand] at @s run particle minecraft:reverse_portal ~ ~1.4 ~ 0.1 0.1 0.1 0 20
execute as @e[tag=labyrinthbasementdemonprojectile,type=armor_stand] at @s run execute unless block ~ ~ ~ air run kill @s 
scoreboard players add @e[tag=labyrinthbasementdemonprojectile,type=armor_stand] Timer 1
kill @e[tag=labyrinthbasementdemonprojectile,type=armor_stand,scores={Timer=20..}]

