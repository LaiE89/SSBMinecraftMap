## When Hasta La Vista is Used
# Fires grenade
summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:6,Tags:["TerminatorHLVGrenade","projectile"]}
execute as @e[limit=1,sort=nearest,tag=TerminatorHLVGrenade,type=area_effect_cloud] at @s run function kits:char/terminator/grenade_launcher/hasta_la_vista/set_position

# Particle
particle explosion ^ ^1 ^1 0 0 0 0 1 force

# Sounds
playsound minecraft:entity.ender_dragon.shoot neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.5 1 1

# Resets motion
function kits:char/terminator/shotgun/dash/reached_end

# Recoil
tp @s ~ ~ ~ ~ ~-10
scoreboard players set @s kits.raycastTick2 0
execute positioned ~ ~1 ~ run function kits:char/terminator/grenade_launcher/hasta_la_vista/recoil

# Terminate passive
function kits:char/terminator/terminate/use_ability

# Resets percentage
scoreboard players set @s kits.timer3 0
