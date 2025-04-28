scoreboard players add @s kits.raycastTick3 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick3 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick3 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick3 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick3 2222

execute as @s[scores={kits.raycastTick3=2222..}] run scoreboard players set @s kits.ability4CD 0
execute as @s[scores={kits.raycastTick3=2222}] positioned ^ ^ ^-0.5 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:150,Tags:["LaiethRitualStand"]}
execute as @s[scores={kits.raycastTick3=3333}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:150,Tags:["LaiethRitualStand"]}
execute as @s[scores={kits.raycastTick3=..1111}] positioned ^ ^ ^0.5 run function kits:char/laieth/laiethpassive4
