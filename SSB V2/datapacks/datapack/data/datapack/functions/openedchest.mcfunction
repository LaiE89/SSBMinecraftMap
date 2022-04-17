scoreboard players add @s RaycastTimer 1
execute if block ~ ~ ~ minecraft:chest run execute unless block ~ ~ ~ minecraft:chest{Items:[]} run scoreboard players set @s RaycastTimer 2222
execute at @s[scores={RaycastTimer=2222..}] run playsound minecraft:entity.firework_rocket.launch neutral @s ~ ~ ~ 10 1 1
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run particle minecraft:firework ~ ~ ~ 0 0 0 0.2 50
execute as @s[scores={RaycastTimer=2222..}] run setblock ^ ^ ^ chest{Lock:"Admin"} destroy
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run kill @e[type=item,nbt={Item:{id:"minecraft:chest"}},distance=..5]
execute as @s[scores={RaycastTimer=..19}] positioned ^ ^ ^0.5 run function datapack:openedchest