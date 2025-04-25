scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run tp @e[tag=SpawnChainsKB] ^ ^ ^-1
execute if entity @s[scores={kits.raycastTick=11}] run tp @e[tag=SpawnChainsKB] ^ ^ ^

execute as @s[scores={kits.raycastTick=..10}] positioned ^ ^ ^0.5 run function kits:char/spawn/spawnpassive4
