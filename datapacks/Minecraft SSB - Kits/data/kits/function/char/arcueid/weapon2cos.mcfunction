playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 3 0 1
summon area_effect_cloud ^ ^ ^0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["ArcueidVacuum","projectile","ArcueidVacuumThrown"]}
scoreboard players set @s kits.ability3CD 0
