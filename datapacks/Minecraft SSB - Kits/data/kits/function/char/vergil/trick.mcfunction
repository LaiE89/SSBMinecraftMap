scoreboard players set @s kits.raycastTick 0
execute as @s at @s positioned ~ ~1.5 ~ run function kits:char/vergil/vergilpassive2

particle dust{color:[0.000,0.000,2.000],scale:1} ^-0.5 ^0.8 ^ 0.2 0.2 0.2 0 6 force
particle dust{color:[1.000,1.000,1.000],scale:0.75} ^-0.5 ^0.8 ^ 0.2 0.2 0.2 0 2 force

scoreboard players add @s kits.timer4 1
attribute @s[scores={kits.timer4=1}] minecraft:entity_interaction_range modifier add range.trick.vergil 5 add_value
attribute @s[scores={kits.timer4=50..}] minecraft:entity_interaction_range modifier remove range.trick.vergil
tag @s[scores={kits.timer4=50..}] remove VergilDash
scoreboard players reset @s[scores={kits.timer4=50..}] kits.timer4