scoreboard players add @s kits.raycastTick3 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick3 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick3 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick3 2222
execute unless block ^ ^ ^-0.71 #kits:passable run scoreboard players set @s kits.raycastTick3 2222

particle cloud ~ ~-0.25 ~ 0 0 0 0 5 force
execute as @s[scores={kits.raycastTick3=2222}] run tp @s ^ ^ ^0.5
execute as @s[scores={kits.raycastTick3=3333}] run tp @s ^ ^ ^
execute as @s[scores={kits.raycastTick3=11}] run tp @s ^ ^ ^
execute as @s[scores={kits.raycastTick3=..10}] positioned ^ ^ ^-0.5 run function kits:char/guts/cannon/raycast
