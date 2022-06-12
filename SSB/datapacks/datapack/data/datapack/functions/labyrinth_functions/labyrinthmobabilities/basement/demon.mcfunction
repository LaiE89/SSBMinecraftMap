scoreboard players add @e[type=skeleton,tag=labyrinthbasementdemon] Timer 1
execute as @e[type=skeleton,tag=labyrinthbasementdemon,scores={Timer=100..}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[type=skeleton,tag=labyrinthbasementdemon,scores={Timer=100..}] at @s run summon area_effect_cloud ^ ^ ^1 {Tags:["labyrinthbasementdemonprojectile","projectile"],Duration:20}
execute as @e[type=skeleton,tag=labyrinthbasementdemon,scores={Timer=100..}] at @s run scoreboard players set @s Timer 0

execute as @e[type=area_effect_cloud,tag=labyrinthbasementdemonprojectile,tag=!castedlabyrinthbasementdemonprojectile] at @s run tp @s ~ ~ ~ facing entity @e[tag=labyrinthbasementdemon,limit=1,sort=nearest]
tag @e[type=area_effect_cloud,tag=labyrinthbasementdemonprojectile,tag=!castedlabyrinthbasementdemonprojectile] add castedlabyrinthbasementdemonprojectile
execute as @e[type=area_effect_cloud,tag=labyrinthbasementdemonprojectile] at @s run tp @s ^ ^ ^-0.8
execute at @e[type=area_effect_cloud,tag=labyrinthbasementdemonprojectile] as @a[distance=..2] at @s run function datapack:labyrinth_functions/labyrinthmobabilities/basement/demondamage
execute as @e[type=area_effect_cloud,tag=labyrinthbasementdemonprojectile] at @s run particle minecraft:reverse_portal ~ ~1.4 ~ 0.1 0.1 0.1 0 20
execute as @e[type=area_effect_cloud,tag=labyrinthbasementdemonprojectile] at @s unless block ~ ~ ~ air run kill @s 

