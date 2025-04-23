effect give @s minecraft:resistance 1 1 true
scoreboard players set @s kits.raycastTick 0
execute at @s rotated ~ 0 positioned ~ ~ ~ run function kits:saber/saberpassive2
execute at @s rotated ~ 0 run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.25 ~ 1.5 0 1.5 0 100 force
execute at @s rotated ~ 0 run particle cloud ~ ~0.25 ~ 1.5 0 1.5 0 100 force
execute at @s rotated ~ 0 run particle block{block_state:"minecraft:dirt"} ~ ~0.25 ~ 1.5 0 1.5 0 100 force
playsound minecraft:entity.wither.break_block neutral @a[distance=..30] ~ ~ ~ 2 0.5 1
execute at @s as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] at @s run damage @s 9 bypass:player_attack by @p[tag=Saber]
execute at @s run effect give @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] minecraft:levitation 1 0 true
execute at @s run effect give @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] minecraft:slowness 1 9 true
tag @s remove SaberStrikeAir2
