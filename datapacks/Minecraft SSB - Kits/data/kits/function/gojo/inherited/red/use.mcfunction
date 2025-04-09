## When Red is Used
# Summons red
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30,Tags:["GojoRed"]}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:21,Tags:["GojoRedInitRot"]}
tp @e[limit=1,sort=nearest,tag=GojoRedInitRot,type=area_effect_cloud] @s

# SFX
playsound entity.guardian.attack neutral @a[distance=..20] ~ ~ ~ 2 2 1

# Remove scores
scoreboard players remove @s kits.ability1CD 50
scoreboard players set @s kits.ability3CD 0
