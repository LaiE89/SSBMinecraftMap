execute if entity @s[tag=!godkillmessages,scores={COS=1..}] run function datapack:shop_functions/killmessagesoff
tellraw @s[tag=!godkillmessages,scores={COS=1..}] {"text":"Activated God Kill Messages","color":"green"}
tag @s[tag=!godkillmessages,scores={COS=1..}] add godkillmessages
tellraw @s[tag=godkillmessages,scores={Shift=1..}] {"text":"Deactivated God Kill Messages","color":"red"}
tag @s[tag=godkillmessages,scores={Shift=1..}] remove godkillmessages

