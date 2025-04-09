tp @s @e[type=area_effect_cloud,tag=chronobreak,sort=nearest,limit=1]
effect give @s minecraft:instant_health 1 2 true
execute at @s as @e[distance=..8,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth] at @s run damage @s 12 bypass:player_attack by @p[tag=Ekko]
execute at @s run scoreboard players add @e[distance=..8,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth,tag=!EkkoPassiveCD] kits.specific.ekkoResonance 1
kill @e[type=minecraft:area_effect_cloud,tag=chronobreak]
kill @e[type=minecraft:area_effect_cloud,tag=ChronobreakPath]
execute at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 0 10
execute at @s run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 2 2 2 0 500 force
execute at @s run playsound minecraft:block.end_gateway.spawn neutral @a[distance=..50] ~ ~ ~ 2 0.5 1
execute at @s run playsound minecraft:entity.illusioner.cast_spell neutral @a[distance=..50] ~ ~ ~ 2 0.5 1
execute at @s run playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..50] ~ ~ ~ 2 2 1
scoreboard players set @s kits.ability4CD 0
