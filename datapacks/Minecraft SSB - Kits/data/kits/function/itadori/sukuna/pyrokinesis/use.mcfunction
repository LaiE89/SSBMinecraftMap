## When Pyrokinesis is Used
# Summons pyrokinesis
effect give @s instant_health 1 0 true
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ItadoriPyrokinesis"]}
tp @e[limit=1,sort=nearest,tag=ItadoriPyrokinesis,type=area_effect_cloud] ~ ~1 ~ ~ 0

# FX
execute positioned ^ ^1.5 ^1 run function kits:itadori/vfx/particles/fire1
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.5 1 0.5
playsound entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 2 0 1

# Resets scores
scoreboard players set @s kits.ability6CD 0
