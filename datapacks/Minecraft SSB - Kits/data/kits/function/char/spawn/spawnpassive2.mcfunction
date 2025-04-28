scoreboard players add @s kits.raycastTick2 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222

execute at @s[scores={kits.raycastTick2=2222..}] run particle squid_ink ^ ^3 ^-2 0.5 1 0.5 0 150 force
execute at @s[scores={kits.raycastTick2=2222..}] run particle falling_dust{block_state:"minecraft:netherrack"} ^ ^3 ^-2 0.5 1 0.5 0 150 force
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick2=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^
execute as @s[scores={kits.raycastTick2=2222..}] positioned ^ ^2 ^-2 run particle smoke ~ ~0.5 ~ 0.4 1 0.4 0 500 force
execute as @s[scores={kits.raycastTick2=2222..}] run playsound minecraft:entity.ender_dragon.flap neutral @p[distance=..20] ~ ~ ~ 10 1 1
execute as @s[scores={kits.raycastTick2=2222..}] run scoreboard players remove @s kits.timer3 30
execute as @s[scores={kits.raycastTick2=2222..}] run scoreboard players set @s kits.ability3CD 1

execute as @s[scores={kits.raycastTick2=..1111}] positioned ^ ^ ^0.5 run function kits:char/spawn/spawnpassive2 
