scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute as @s[scores={kits.raycastTick2=2222..}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:200,Tags:["KanekiKagune"]}
execute as @s[scores={kits.raycastTick2=..20}] positioned ~ ~-0.5 ~ run function kits:char/kaneki/kagunedown
