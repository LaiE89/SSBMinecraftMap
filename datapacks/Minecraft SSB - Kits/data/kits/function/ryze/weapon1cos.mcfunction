summon area_effect_cloud ^ ^1.25 ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:8,Tags:["overload","projectile"]}
tp @e[type=area_effect_cloud,tag=overload] @s
playsound minecraft:entity.evoker.cast_spell neutral @a[distance=..15] ~ ~ ~ 2 0.5 1
effect give @s[scores={kits.timer3=2..}] minecraft:absorption 2 1 true
effect give @s[scores={kits.timer3=2..}] minecraft:speed 2 4 true
execute at @s[scores={kits.timer3=2..}] run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
execute at @s[scores={kits.timer3=2..}] run playsound minecraft:block.beacon.activate neutral @a[distance=..20] ~ ~ ~ 2 2 1
scoreboard players reset @s kits.timer3
scoreboard players set @s[scores={kits.timer2=2..}] kits.ability1CD 0
scoreboard players remove @s[scores={kits.timer2=2..}] kits.timer2 2
