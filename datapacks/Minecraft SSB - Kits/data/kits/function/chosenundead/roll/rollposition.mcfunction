scoreboard players add @s kits.raycastTick 1
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^-0.5 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:15,Tags:["DarkSoulsRoll"]}
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:15,Tags:["DarkSoulsRoll"]}
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run scoreboard players set @s kits.ability1CD 0
execute if entity @s[scores={kits.raycastTick=15}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:15,Tags:["DarkSoulsRoll"]}
execute if entity @s[scores={kits.raycastTick=15}] run scoreboard players set @s kits.ability1CD 0

execute as @s[scores={kits.raycastTick=..14}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:chosenundead/roll/rollposition
