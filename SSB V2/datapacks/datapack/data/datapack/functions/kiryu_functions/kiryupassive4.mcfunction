scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @e[tag=KiryuGrabbed] ^ ^ ^-2
execute as @s[scores={RaycastTimer=2222..}] run execute as @e[tag=KiryuGrabbed] at @s run function datapack:damage2
execute as @s[scores={RaycastTimer=2222..}] run effect give @e[tag=KiryuGrabbed] slowness 2 4 true
execute as @s[scores={RaycastTimer=2222..}] run execute at @e[tag=KiryuGrabbed] run particle minecraft:explosion ~ ~1 ~
execute as @s[scores={RaycastTimer=2222..}] run execute at @e[tag=KiryuGrabbed] run playsound minecraft:entity.wither.break_block neutral @a[distance=..30] ~ ~ ~ 3 0.5 1
execute if entity @s[scores={RaycastTimer=21}] run tp @e[tag=KiryuGrabbed] ^ ^ ^

execute as @s[scores={RaycastTimer=..20}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:kiryu_functions/kiryupassive4