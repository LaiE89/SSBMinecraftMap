execute if entity @s[tag=!terrariakillmessages,scores={COS=1..}] run function datapack:shop_functions/killmessagesoff
tellraw @s[tag=!terrariakillmessages,scores={COS=1..}] {"text":"Activated Terraria Kill Messages","color":"green"}
tag @s[tag=!terrariakillmessages,scores={COS=1..}] add terrariakillmessages
tellraw @s[tag=terrariakillmessages,scores={Shift=1..}] {"text":"Deactivated Terraria Kill Messages","color":"red"}
tag @s[tag=terrariakillmessages,scores={Shift=1..}] remove terrariakillmessages