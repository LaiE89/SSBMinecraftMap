scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^1
execute as @s[scores={kits.raycastTick=10}] positioned ^ ^ ^ run tp @s ^ ^ ^

execute as @s[scores={kits.raycastTick=..9}] rotated ~ 0 positioned ^ ^ ^-0.5 run function kits:sans/sanspassive4
