scoreboard players add @s kits.raycastTick 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute if entity @s[scores={kits.raycastTick=2222}] run tp @e[tag=GarchompRushKB] ^ ^ ^-0.5
execute if entity @s[scores={kits.raycastTick=3333}] run tp @e[tag=GarchompRushKB] ^ ^ ^
execute if entity @s[scores={kits.raycastTick=20}] run tp @e[tag=GarchompRushKB] ~ ~ ~
execute as @s[scores={kits.raycastTick=..19}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/cynthia/garchomp/dragonrushkb
