## When Red is Used
# cast red
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["GojoRed"],Duration:30}
playsound entity.guardian.attack neutral @a[distance=..20] ~ ~ ~ 2 2 1

# remove scores
scoreboard players remove @s kits.ability1CD 30
scoreboard players set @s kits.ability3CD 0