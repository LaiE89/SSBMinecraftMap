scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @e[tag=KiryuGrabbed] ^ ^ ^-1
execute if entity @s[scores={RaycastTimer=4}] run tp @e[tag=KiryuGrabbed] ^ ^ ^

execute as @s[scores={RaycastTimer=..3}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:kiryu_functions/kiryupassive5