scoreboard players add @s kits.raycastTick 1
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run tp @e[tag=DragonbornForced] ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick=3333}] positioned ~ ~ ~ run tp @e[tag=DragonbornForced] ^ ^ ^
execute as @s[scores={kits.raycastTick=30}] positioned ~ ~ ~ run tp @e[tag=DragonbornForced] ^ ^ ^
execute as @s[scores={kits.raycastTick=..29}] positioned ^ ^ ^0.5 run function kits:dragonborn/forceknockback
