scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Luffy,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 3222

execute as @s[scores={kits.raycastTick=3222..}] positioned ^ ^ ^ run tag @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Luffy,tag=!InLabyrinth] add LuffyPistolDestination
execute as @s[scores={kits.raycastTick=2222..3000}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~-1.75 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["LuffyPistolDestination"]}
execute if entity @s[scores={kits.raycastTick=30}] run summon area_effect_cloud ~ ~-1.75 ~ {Tags:["LuffyPistolDestination"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60}

execute as @s[scores={kits.raycastTick=..29}] positioned ^ ^ ^0.5 run function kits:luffy/pistol/destination
