scoreboard players add @s kits.raycastTick2 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222..}] as @e[tag=GutsCleaved] at @s run function kits:char/guts/cleavedamage2
execute as @s[scores={kits.raycastTick2=2222}] run tp @e[tag=GutsCleaved] ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick2=3333}] run tp @e[tag=GutsCleaved] ^ ^ ^
execute as @s[scores={kits.raycastTick2=21}] run tp @e[tag=GutsCleaved] ^ ^ ^
execute as @s[scores={kits.raycastTick2=..20}] positioned ^ ^ ^0.5 run function kits:char/guts/gutspassive3
