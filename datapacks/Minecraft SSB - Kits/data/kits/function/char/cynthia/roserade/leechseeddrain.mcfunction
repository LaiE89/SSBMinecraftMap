scoreboard players add @p[tag=Cynthia] kits.timer7 1
playsound minecraft:block.conduit.deactivate neutral @a[distance=..20] ~ ~ ~ 10 1 1
damage @s 3 bypass:player_attack_no_kb by @p[tag=Cynthia]
summon area_effect_cloud ~ ~1 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["RoseradeHealing"]}
scoreboard players set @p[tag=Cynthia] kits.timer6 0
