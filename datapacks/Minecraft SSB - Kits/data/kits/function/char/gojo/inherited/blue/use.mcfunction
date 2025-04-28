## When blue is used
# cast blue
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["GojoBlue"],Duration:40}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["GojoBlueInitRot"],Duration:11}
scoreboard players set @e[type=area_effect_cloud,tag=GojoBlue,limit=1,sort=nearest] kits.timer 0
tp @e[limit=1,sort=nearest,tag=GojoBlueInitRot,type=area_effect_cloud] @s
playsound entity.guardian.attack neutral @a[distance=..20] ~ ~ ~ 2 1 1

# remove scores
scoreboard players remove @s kits.ability1CD 50
scoreboard players set @s kits.ability4CD 0