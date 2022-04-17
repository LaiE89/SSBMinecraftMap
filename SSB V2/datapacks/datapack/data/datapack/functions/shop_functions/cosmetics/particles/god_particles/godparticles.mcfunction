execute as @a[tag=godparticles,scores={MovingTime=15..}] at @s positioned ~ ~-2 ~ unless entity @e[type=area_effect_cloud,tag=godparticlestand,distance=..3] run summon area_effect_cloud ~ ~ ~ {Tags:["godparticlestand","cosmetics"],Duration:5}
execute as @a[tag=godparticles,scores={MovingTime=15..}] at @s run tp @e[type=minecraft:area_effect_cloud,tag=godparticlestand,limit=1,sort=nearest] ~ ~-2 ~
execute as @a[tag=godparticles,scores={MovingTime=15..}] at @s run data modify entity @e[type=minecraft:area_effect_cloud,tag=godparticlestand,limit=1,sort=nearest] Age set value 0
execute as @a[tag=godparticles,scores={MovingTime=0}] at @s run particle minecraft:falling_dust minecraft:white_wool ~ ~0.5 ~ 0.1 0.1 0.1 0 5
execute as @a[tag=godparticles,scores={MovingTime=0}] at @s run particle minecraft:falling_dust minecraft:coal_block ~ ~0.5 ~ 0.1 0.1 0.1 0 5
execute as @e[type=minecraft:area_effect_cloud,tag=godparticlestand] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=minecraft:area_effect_cloud,tag=godparticlestand] at @s run particle minecraft:falling_dust minecraft:coal_block ^ ^2.5 ^2 0 0 0 0 10
execute as @e[type=minecraft:area_effect_cloud,tag=godparticlestand] at @s run particle minecraft:falling_dust minecraft:white_wool ^ ^2.5 ^-2 0 0 0 0 10
