scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
#execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run summon area_effect_cloud ^ ^ ^-0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["EdwardWallLocation"]}
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run particle block{block_state:"minecraft:dirt"} ^ ^ ^-0.5 3 0 3 1 100 force
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run schedule function kits:char/edward/wallsummon 10t append
execute as @s[scores={kits.raycastTick=20}] positioned ~ ~ ~ run scoreboard players set @s kits.raycastTick2 0
execute as @s[scores={kits.raycastTick=20}] positioned ~ ~ ~ run function kits:char/edward/walldownlocation
execute as @s[scores={kits.raycastTick=..19}] positioned ^ ^ ^0.5 run function kits:char/edward/walllocation
