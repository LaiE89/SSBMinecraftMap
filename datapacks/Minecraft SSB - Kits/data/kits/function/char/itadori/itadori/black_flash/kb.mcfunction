# Knocks Back Enemies Hit by Strong Black Flash
scoreboard players add @s kits.specific.itadorikits.raycastTick 1
execute if score @s kits.specific.itadorikits.raycastTick matches 1 run summon area_effect_cloud ^ ^1 ^-2 {Duration:10,Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["ItadoriBlackLightning"]}
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.specific.itadorikits.raycastTick 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.specific.itadorikits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.specific.itadorikits.raycastTick 2222
execute unless block ^ ^ ^-0.71 #kits:passable run scoreboard players set @s kits.specific.itadorikits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.specific.itadorikits.raycastTick 2222
execute if score @s kits.specific.itadorikits.raycastTick matches 2222 run tp @s ^ ^ ^0.5
execute if score @s kits.specific.itadorikits.raycastTick matches 2222 run summon area_effect_cloud ~ ~1 ~ {Duration:10,Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["ItadoriBlackLightning"]}
execute if score @s kits.specific.itadorikits.raycastTick matches 3333 run tp @s ^ ^ ^
execute if score @s kits.specific.itadorikits.raycastTick matches 3333 run summon area_effect_cloud ~ ~1 ~ {Duration:10,Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["ItadoriBlackLightning"]}
execute if score @s kits.specific.itadorikits.raycastTick matches 20 run tp @s ^ ^ ^
execute if score @s kits.specific.itadorikits.raycastTick matches 20 run summon area_effect_cloud ~ ~1 ~ {Duration:10,Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["ItadoriBlackLightning"]}
execute if score @s kits.specific.itadorikits.raycastTick matches ..19 positioned ^ ^ ^-0.5 rotated ~ 0 run function kits:char/itadori/itadori/black_flash/kb
