# Knocks Back Enemies Hit by Red
scoreboard players add @s kits.specific.gojokits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.specific.gojokits.raycastTick 2222
execute if score @s kits.specific.gojokits.raycastTick matches 2222.. run tp @s ^ ^ ^1
execute if score @s kits.specific.gojokits.raycastTick matches 20 run tp @s ^ ^ ^
execute if score @s kits.specific.gojokits.raycastTick matches ..19 positioned ^ ^ ^-0.5 run function kits:gojo/inherited/red/kb
