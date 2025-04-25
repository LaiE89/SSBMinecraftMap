scoreboard players add @s kits.raycastTick3 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick3 2222

execute as @s[scores={kits.raycastTick3=2222..}] run scoreboard players set @s kits.raycastTick4 0
execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^-1 run function kits:char/ekko/convergence/position2

execute if entity @s[scores={kits.raycastTick3=50}] run scoreboard players set @s kits.raycastTick4 0
execute if entity @s[scores={kits.raycastTick3=50}] positioned ~ ~ ~ run function kits:char/ekko/convergence/position2

execute as @s[scores={kits.raycastTick3=..49}] positioned ^ ^ ^0.5 run function kits:char/ekko/convergence/position
