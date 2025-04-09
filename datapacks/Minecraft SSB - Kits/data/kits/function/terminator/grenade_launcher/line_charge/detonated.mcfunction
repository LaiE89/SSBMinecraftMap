## When Line Charge Grenade Detonated
# Removes grenade visuals
item replace entity @s[scores={kits.timer=45}] armor.head with air 1

# Explosions move toward initial usage location
execute facing entity @e[limit=1,sort=nearest,tag=TerminatorLineChargeUseMarker,type=area_effect_cloud] eyes run tp @s ^ ^ ^1

# Collision
execute as @e[distance=..5,limit=1,sort=nearest,tag=!Terminator,tag=!TerminatorLineChargeGrenadeHit,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:terminator/grenade_launcher/line_charge/hit

# Explosions stop upon reaching initial usage location
execute if entity @e[distance=..2,limit=1,sort=nearest,tag=TerminatorLineChargeUseMarker,type=area_effect_cloud] run function kits:terminator/grenade_launcher/line_charge/stop

# Particles
particle flame ~ ~0.5 ~ 0 0 0 0.15 2 force
particle flash ~ ~0.5 ~ 0 0 0 0 1 force

# Sound
playsound minecraft:entity.firework_rocket.blast neutral @a[distance=..20] ~ ~ ~ 0.5 0 1
