scoreboard players add @s kits.raycastTick4 1
particle minecraft:cloud ~ ~0.25 ~ 0 0 0 0.1 1 force
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick4 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick4 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick4 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick4 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick4 2222

execute as @s[scores={kits.raycastTick4=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick4=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^
execute if entity @s[scores={kits.raycastTick4=9}] run tp @s ^ ^ ^
execute as @s[scores={kits.raycastTick4=..8}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/doomslayer/dash/passive2
