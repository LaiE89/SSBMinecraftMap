## When Super is Used
# Summons points
effect give @e[type=!#kits:non_entity,distance=..10,tag=!Siris,tag=!InLabyrinth,tag=!Invincible] slowness 3 4 true
effect give @s slowness 3 4 true
execute as @e[type=!#kits:non_entity,distance=..10,tag=!Siris,tag=!InLabyrinth,tag=!Invincible] at @s run summon area_effect_cloud ~ ~1.5 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["SirisSuperPoint"]}
execute as @e[limit=1,sort=nearest,tag=SirisSuperPoint,type=area_effect_cloud] at @s run tp @s ~ ~ ~ facing entity @p[tag=Siris]

# FX
execute positioned ^ ^1.5 ^2 run function kits:char/siris/vfx/particles/ripple/type2
playsound block.beacon.power_select neutral @a[distance=..20] ~ ~ ~ 1 1.75 1
playsound block.conduit.deactivate neutral @a[distance=..20] ~ ~ ~ 1 0 1

# Resets cooldowns
scoreboard players set @s kits.ability1CD 0
