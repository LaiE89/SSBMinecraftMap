scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kirito,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run function kits:char/kirito/blitzstart

execute as @s[scores={kits.raycastTick=..19}] positioned ^ ^ ^0.5 run function kits:char/kirito/blitzlocation
