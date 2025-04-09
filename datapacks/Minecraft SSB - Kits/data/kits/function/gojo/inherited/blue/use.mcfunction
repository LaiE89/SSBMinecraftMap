## When Blue is Used
# Summons blue
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:50,Tags:["GojoBlue"]}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:41,Tags:["GojoBlueInitRot"]}
tp @e[limit=1,sort=nearest,tag=GojoBlueInitRot,type=area_effect_cloud] @s

# SFX
playsound entity.guardian.attack neutral @a[distance=..20] ~ ~ ~ 2 1 1

# Remove scores
scoreboard players remove @s kits.ability1CD 50
scoreboard players set @s kits.ability4CD 0
