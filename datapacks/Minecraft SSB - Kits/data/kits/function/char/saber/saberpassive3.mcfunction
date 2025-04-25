particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0.4 0.4 0.4 0 10 force
scoreboard players add @s kits.raycastTick 1
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^
execute if entity @s[scores={kits.raycastTick=10}] run tp @s ^ ^ ^

execute as @s[scores={kits.raycastTick=..9}] positioned ^ ^ ^0.5 run function kits:char/saber/saberpassive3