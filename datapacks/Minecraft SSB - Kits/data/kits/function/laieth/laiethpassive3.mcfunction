scoreboard players add @s kits.raycastTick2 1
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^-0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222..}] positioned ^ ^ ^ run particle flash ~ ~1 ~ 0 0 0 0 1 force
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick2=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^
execute if entity @s[scores={kits.raycastTick2=35}] run particle flash ~ ~1 ~ 0 0 0 0 1 force
execute if entity @s[scores={kits.raycastTick2=35}] run tp @s ^ ^ ^
execute as @s[scores={kits.raycastTick2=2222..}] run scoreboard players set @s kits.ability3CD 0
execute if entity @s[scores={kits.raycastTick2=35}] run scoreboard players set @s kits.ability3CD 0
execute as @s[scores={kits.raycastTick2=..34}] positioned ^ ^ ^0.5 run function kits:laieth/laiethpassive3
