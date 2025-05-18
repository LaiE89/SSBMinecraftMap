## When Stasis is Used
# Launches projectile
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:15,Tags:["IsaacStasisProjectile","projectile"]}
execute as @e[limit=1,sort=nearest,tag=IsaacStasisProjectile,type=area_effect_cloud] at @s run function kits:char/isaac/modules/stasis/set_position

# Sounds
playsound minecraft:block.conduit.activate neutral @a[distance=..20] ~ ~ ~ 1 1 1
playsound minecraft:entity.zombie_villager.cure neutral @a[distance=..20] ~ ~ ~ 0.1 2 1

# Reset scores
scoreboard players remove @s kits.timer4 1
scoreboard players set @s kits.ability2CD 0
