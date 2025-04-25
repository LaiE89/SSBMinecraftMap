effect clear @s levitation
effect clear @e[tag=RaidenCrescentSliced] levitation
scoreboard players set @s kits.raycastTick 0
execute as @s at @s positioned ~ ~ ~ run function kits:char/raiden/raidenpassive3
scoreboard players set @e[tag=RaidenCrescentSliced] kits.specific.raidenCrescentTick 0
execute as @e[tag=RaidenCrescentSliced] at @s positioned ~ ~ ~ run function kits:char/raiden/raidenpassive4
tag @e[tag=RaidenCrescentSliced] remove RaidenCrescentSliced
