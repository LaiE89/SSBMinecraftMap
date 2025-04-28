# Shotgun KB
scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^0.49 ^0.22 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^-0.49 ^0.22 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run tp @e[tag=JacketShotgunKB] ^ ^ ^-1
execute if entity @s[scores={kits.raycastTick=8}] run tp @e[tag=JacketShotgunKB] ^ ^ ^
execute as @s[scores={kits.raycastTick=..7}] positioned ^ ^ ^0.5 run function kits:char/jacket/shotgun/kb
