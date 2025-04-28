scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222..}] positioned ^ ^ ^ run tp @e[tag=KilluaKnockback] ^ ^ ^-0.5
execute if entity @s[scores={kits.raycastTick2=31}] run tp @e[tag=KilluaKnockback] ^ ^ ^

execute as @s[scores={kits.raycastTick2=..30}] positioned ^ ^ ^0.5 rotated ~ 0 run function kits:char/killua/killuapassive4
