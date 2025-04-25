scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.timer=1..}] run execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run tp @e[tag=VergilForceEdgeKB] ^ ^ ^1
execute as @s[scores={kits.timer=1..}] run execute if entity @s[scores={kits.raycastTick=8}] run tp @e[tag=VergilForceEdgeKB] ^ ^ ^

execute as @s[scores={kits.raycastTick=..7}] positioned ^ ^ ^-0.5 run function kits:char/vergil/vergilpassive6
