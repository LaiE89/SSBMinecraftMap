playsound minecraft:block.grindstone.use neutral @a[distance=..15] ~ ~ ~ 3 2 1
summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["chainsawchain","projectile"]}
scoreboard players set @s kits.ability1CD 0
