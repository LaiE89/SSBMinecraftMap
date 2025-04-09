summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:8,Tags:["pkfire","projectile"]}
particle lava ^ ^1 ^1 0 0 0 0 5 force
playsound minecraft:entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 10 1 1
scoreboard players set @s kits.ability2CD 0
