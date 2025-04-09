summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["razorshuriken","projectile","zedshuriken"]}
execute as @e[type=armor_stand,tag=zedshadow] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth]
execute at @e[type=armor_stand,tag=zedshadow] run summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["razorshuriken2","projectile","zedshuriken"]}
execute as @e[type=armor_stand,tag=ultshadow] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth]
execute at @e[type=armor_stand,tag=ultshadow] run summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["razorshuriken3","projectile","zedshuriken"]}
playsound minecraft:block.dispenser.launch neutral @a[distance=..10] ~ ~ ~ 10 0.5 1
scoreboard players set @s kits.ability1CD 0
