scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^-0.71 #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^0.49 ^0.22 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^-0.49 ^0.22 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run tp @s ^ ^ ^1
execute if entity @s[scores={kits.raycastTick=21}] run tp @s ^ ^ ^

execute as @s[scores={kits.raycastTick=..20}] positioned ^ ^ ^-0.5 run function kits:char/laieth/cards/mirrorforceknockback
