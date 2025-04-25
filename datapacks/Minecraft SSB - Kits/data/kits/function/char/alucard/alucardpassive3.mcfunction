scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run particle dust{color:[0.000,0.000,0.000],scale:4} ~ ~0.1 ~ 1.5 0 1.5 0 100 force
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["AlucardSpikes"]}
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!AlucardBaskerville,tag=!InLabyrinth,tag=!Alucard] at @s run function kits:char/alucard/spikesdamage
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run playsound minecraft:block.roots.break neutral @a[distance=..50] ~ ~ ~ 3 0 1

execute as @s[scores={kits.raycastTick=..1111}] positioned ^ ^ ^0.5 run function kits:char/alucard/alucardpassive3
