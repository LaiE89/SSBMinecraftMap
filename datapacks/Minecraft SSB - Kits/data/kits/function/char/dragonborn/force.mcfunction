execute positioned ~ ~1.5 ~ positioned ^ ^ ^1.5 run function kits:char/dragonborn/boom
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30,Tags:["DragonbornForce","projectile"]}
tp @e[type=area_effect_cloud,tag=DragonbornForce] @s
playsound minecraft:entity.ender_dragon.growl neutral @a[distance=..50] ~ ~ ~ 10 1.25 1
scoreboard players set @s kits.ability1CD 0
