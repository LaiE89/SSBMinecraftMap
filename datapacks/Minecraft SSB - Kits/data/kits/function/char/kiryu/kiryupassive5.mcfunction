scoreboard players add @s kits.raycastTick 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @e[tag=KiryuGrabbed] ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run tp @e[tag=KiryuGrabbed] ^ ^ ^
execute if entity @s[scores={kits.raycastTick=4}] run tp @e[tag=KiryuGrabbed] ^ ^ ^

execute as @s[scores={kits.raycastTick=..3}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/kiryu/kiryupassive5
