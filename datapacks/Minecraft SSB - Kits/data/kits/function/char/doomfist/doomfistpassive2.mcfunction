scoreboard players add @s kits.raycastTick 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^-0.5 run scoreboard players set @s kits.raycastTick2 0
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^-0.5 run function kits:char/doomfist/doomfistpassive10

execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run scoreboard players set @s kits.raycastTick2 0
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run function kits:char/doomfist/doomfistpassive10

execute if entity @s[scores={kits.raycastTick=31}] run scoreboard players set @s kits.raycastTick2 0
execute if entity @s[scores={kits.raycastTick=31}] run function kits:char/doomfist/doomfistpassive10
execute as @s[scores={kits.raycastTick=..30}] positioned ^ ^ ^0.5 run function kits:char/doomfist/doomfistpassive2
