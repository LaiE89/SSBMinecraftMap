scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run scoreboard players set @s kits.ability4CD 0
execute if entity @s[scores={kits.raycastTick=50}] run scoreboard players set @s kits.ability4CD 0
execute as @s[scores={kits.raycastTick=2222..}] run scoreboard players set @s kits.raycastTick2 0
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^-1 run function kits:char/2b/2bpassive4
execute if entity @s[scores={kits.raycastTick=50}] run scoreboard players set @s kits.raycastTick2 0
execute if entity @s[scores={kits.raycastTick=50}] positioned ~ ~ ~ run function kits:char/2b/2bpassive4
execute as @s[scores={kits.raycastTick=2222..}] at @p[tag=2B] run summon area_effect_cloud ~ ~2 ~ {Tags:["2bgravityprojectile","projectile"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30}
execute if entity @s[scores={kits.raycastTick=50}] at @p[tag=2B] run summon area_effect_cloud ~ ~2 ~ {Tags:["2bgravityprojectile","projectile"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30}
execute as @s[scores={kits.raycastTick=..49}] positioned ^ ^ ^0.5 run function kits:char/2b/2bpassive3
