execute store result score @s kits.timer run data get entity @s Age
execute if entity @s[scores={kits.timer=25}] run summon area_effect_cloud ~ ~2 ~ {Tags:["ekkoconvergenceprojectile","projectile"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30}
execute if entity @s[scores={kits.timer=25}] run particle minecraft:sweep_attack ^ ^1.5 ^2
execute if entity @s[scores={kits.timer=25}] run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..30] ~ ~ ~ 5 0 1
execute at @s rotated ~180 0 run function kits:ekko/imageparticles2
tp @s[scores={kits.timer=1}] ^ ^ ^-0.5
tp @s[scores={kits.timer=2}] ^ ^ ^-0.5
tp @s[scores={kits.timer=3}] ^ ^ ^-0.5
tp @s[scores={kits.timer=4}] ^ ^ ^-0.5
