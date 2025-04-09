scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^-0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^0.49 ^0.22 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^-0.49 ^0.22 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^-0.49 ^-0.22 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^0.49 ^-0.22 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @e[tag=SansInTelekinesis] ^ ^ ^-1
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run execute as @e[tag=SansInTelekinesis] at @s run damage @s 6 bypass:player_attack by @p[tag=Sans]
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run scoreboard players set @s kits.ability4CD 0
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run function kits:sans/resettelekinesis
execute as @s[scores={kits.raycastTick=50}] positioned ^ ^ ^ run tp @e[tag=SansInTelekinesis] ^ ^ ^
execute as @s[scores={kits.raycastTick=50}] positioned ^ ^ ^ run scoreboard players set @s kits.ability4CD 0
execute as @s[scores={kits.raycastTick=50}] positioned ^ ^ ^ run function kits:sans/resettelekinesis

execute as @s[scores={kits.raycastTick=..49}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:sans/sanspassive7
