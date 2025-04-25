scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run tp @e[tag=KiryuGrabbed] ^ ^ ^-2
execute as @s[scores={kits.raycastTick=2222..}] run execute as @e[tag=KiryuGrabbed] at @s run damage @s 12 bypass:player_attack by @p[tag=Kiryu]
execute as @s[scores={kits.raycastTick=2222..}] run effect give @e[tag=KiryuGrabbed] minecraft:slowness 2 2 true
execute as @s[scores={kits.raycastTick=2222..}] run effect give @e[tag=KiryuGrabbed] minecraft:weakness 2 0 true
execute as @s[scores={kits.raycastTick=2222..}] run effect clear @e[tag=KiryuGrabbed] minecraft:levitation
execute as @s[scores={kits.raycastTick=2222..}] run execute at @e[tag=KiryuGrabbed] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force
execute as @s[scores={kits.raycastTick=2222..}] run execute at @e[tag=KiryuGrabbed] run playsound minecraft:entity.wither.break_block neutral @a[distance=..30] ~ ~ ~ 3 0.5 1
execute if entity @s[scores={kits.raycastTick=21}] run tp @e[tag=KiryuGrabbed] ^ ^ ^

execute as @s[scores={kits.raycastTick=..20}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/kiryu/kiryupassive4
