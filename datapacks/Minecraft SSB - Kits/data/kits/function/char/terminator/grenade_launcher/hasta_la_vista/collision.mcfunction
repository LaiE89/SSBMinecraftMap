## If HLV Grenade AEC Collides With Enemy
# Execute at enemy hit by grenade
execute positioned ^ ^ ^5.5 as @e[distance=..7,tag=!Terminator,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/terminator/grenade_launcher/hasta_la_vista/hit

# Plays spiral fire animation
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:15,Tags:["TerminatorHLVGrenadeFireAnimation"]}
tp @e[limit=1,sort=nearest,tag=TerminatorHLVGrenadeFireAnimation,type=area_effect_cloud] @s

# Particles
particle flame ~ ~ ~ 0 0 0 1 30 force
particle flash ~ ~ ~ 0 0 0 0 1 force

# Sounds
playsound minecraft:entity.blaze.hurt neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1.5 0 1

# Kills grenade
kill @s
