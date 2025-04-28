scoreboard players add @s kits.raycastTick2 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick2=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^
execute if entity @s[scores={kits.raycastTick2=20}] run tp @s ^ ^ ^

execute as @s[scores={kits.raycastTick2=..19}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/luffy/dash
