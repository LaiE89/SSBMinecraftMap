## When purple is used
# cast purple
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["GojoPurple"],Duration:50}
execute rotated as @p[tag=Gojo] run tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=GojoPurple] ~ ~ ~ ~ ~

# fx
particle flash ~ ~ ~ 0 0 0 0 1
playsound entity.lightning_bolt.thunder neutral @a[distance=..20] ~ ~ ~ 2 2 1

# combine
kill @e[type=area_effect_cloud,limit=1,sort=nearest,tag=GojoBlue]
kill @s