scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222

#execute as @s[scores={kits.raycastTick2=2222..}] run tp @s ^ ^ ^-2
execute as @s[scores={kits.raycastTick2=2222..}] run scoreboard players set @s kits.timer 6

execute as @s[scores={kits.raycastTick2=..7}] positioned ^ ^ ^0.5 run function kits:char/2b/2bpassive2
