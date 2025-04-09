scoreboard players add @s kits.raycastTick3 1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s kits.raycastTick3 2222
execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^ run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Invisible:1b,Tags:["convergence"]}

execute as @s[scores={kits.raycastTick3=2222..}] run scoreboard players set @s kits.raycastTick4 0
execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^-1 run function kits:ekko/ekkopassive5

execute if entity @s[scores={kits.raycastTick3=50}] run scoreboard players set @s kits.raycastTick4 0
execute if entity @s[scores={kits.raycastTick3=50}] positioned ~ ~ ~ run function kits:ekko/ekkopassive5

execute as @s[scores={kits.raycastTick3=..49}] positioned ^ ^ ^0.5 run function kits:ekko/ekkopassive3
