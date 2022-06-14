scoreboard players add @s RaycastTimer 1
execute if block ~ ~ ~ minecraft:chest{Lock:"Unopened"} run scoreboard players set @s RaycastTimer 2222
execute at @s[scores={RaycastTimer=2222..}] run playsound minecraft:entity.firework_rocket.launch neutral @s ~ ~ ~ 10 1 1
execute as @s[scores={RaycastTimer=2222..}] run particle minecraft:firework ~ ~ ~ 0 0 0 0.2 50
execute as @s[scores={RaycastTimer=2222..}] if block ~ ~ ~ minecraft:chest[facing=north] run setblock ^ ^ ^ chest[facing=north]{Lock:"Admin"} destroy
execute as @s[scores={RaycastTimer=2222..}] if block ~ ~ ~ minecraft:chest[facing=east] run setblock ^ ^ ^ chest[facing=east]{Lock:"Admin"} destroy
execute as @s[scores={RaycastTimer=2222..}] if block ~ ~ ~ minecraft:chest[facing=south] run setblock ^ ^ ^ chest[facing=south]{Lock:"Admin"} destroy
execute as @s[scores={RaycastTimer=2222..}] if block ~ ~ ~ minecraft:chest[facing=west] run setblock ^ ^ ^ chest[facing=west]{Lock:"Admin"} destroy
execute as @s[scores={RaycastTimer=2222..}] positioned ~ ~ ~ run kill @e[type=item,nbt={Item:{id:"minecraft:chest"}},distance=..5]
execute as @s[scores={RaycastTimer=..19}] positioned ^ ^ ^0.5 run function datapack:chests_functions/openedchest