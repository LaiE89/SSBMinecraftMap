scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run tp @s ~ ~-2 ~
execute if entity @s[scores={kits.raycastTick=6}] run tp @s ~ ~ ~

execute as @s[scores={kits.raycastTick=..5}] positioned ~ ~0.5 ~ run function kits:char/chosenundead/stamp/knockup