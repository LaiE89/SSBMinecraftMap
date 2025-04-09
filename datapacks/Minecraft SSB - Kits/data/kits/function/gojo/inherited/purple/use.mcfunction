## When Purple is Used
# Summons purple
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30,Tags:["GojoPurple"]}
execute rotated as @p[tag=Gojo] run tp @e[limit=1,sort=nearest,tag=GojoPurple,type=area_effect_cloud] ~ ~ ~ ~ ~

# FX
particle flash ~ ~1 ~ 0 0 0 0 2 force
playsound block.conduit.activate neutral @a[distance=..20] ~ ~ ~ 2 2 1
playsound entity.lightning_bolt.thunder neutral @a[distance=..20] ~ ~ ~ 1 2 1

# Combine
kill @e[limit=1,sort=nearest,tag=GojoBlue,type=area_effect_cloud]
kill @s
