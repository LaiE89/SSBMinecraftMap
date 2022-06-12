scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={Timer=1..}] run execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @e[tag=VergilForceEdgeKB] ^ ^ ^1
execute as @s[scores={Timer=1..}] run execute if entity @s[scores={RaycastTimer=8}] run tp @e[tag=VergilForceEdgeKB] ^ ^ ^

execute as @s[scores={RaycastTimer=..7}] positioned ^ ^ ^-0.5 run function datapack:vergil_functions/vergilpassive3