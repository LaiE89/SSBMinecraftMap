## When Pistol Is Fired
# Fires bullet
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:12,Tags:["JacketPistolBullet","JacketProjectile","projectile"]}
tp @e[limit=1,sort=nearest,tag=JacketPistolBullet,type=area_effect_cloud] @s

# Sound
playsound minecraft:entity.firework_rocket.blast neutral @a[distance=..20] ~ ~ ~ 2 0 1

# Reset scores
scoreboard players remove @s kits.timer 1
scoreboard players set @s kits.ability3CD 0
