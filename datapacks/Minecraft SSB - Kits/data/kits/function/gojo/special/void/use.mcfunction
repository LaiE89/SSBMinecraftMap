## When Unlimited Void is Used
# Summons domain
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["GojoUnlimitedVoid"]}
tp @e[limit=1,sort=nearest,tag=GojoUnlimitedVoid,type=area_effect_cloud] @s

# FX
particle flash ~ ~1 ~ 0 0 0 0 2 force
playsound block.beacon.ambient neutral @a[distance=..20] ~ ~ ~ 2 2 1

# Remove scores
scoreboard players set @s kits.ability6CD 0
