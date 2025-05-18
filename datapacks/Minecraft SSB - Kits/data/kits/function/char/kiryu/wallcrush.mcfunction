execute as @e[tag=KiryuGrabbed] at @s run attribute @s minecraft:gravity modifier remove gravity.wallcrush.kiryu
effect clear @e[tag=KiryuGrabbed] minecraft:levitation
scoreboard players set @s kits.raycastTick 0  
execute at @s positioned ~ ~1.5 ~ run function kits:char/kiryu/kiryupassive4
tag @e[tag=KiryuGrabbed] remove KiryuGrabbed
