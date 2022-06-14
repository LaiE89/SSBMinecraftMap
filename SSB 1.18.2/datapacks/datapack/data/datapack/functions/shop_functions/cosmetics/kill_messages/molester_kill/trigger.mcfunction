execute if entity @s[tag=!molesterkillmessages,scores={Basic_COS=1..}] run function datapack:shop_functions/killmessagesoff
tellraw @s[tag=!molesterkillmessages,scores={Basic_COS=1..}] {"text":"Activated Molester Kill Messages","color":"green"}
tag @s[tag=!molesterkillmessages,scores={Basic_COS=1..}] add molesterkillmessages
tellraw @s[tag=molesterkillmessages,scores={Basic_Shift=1..}] {"text":"Deactivated Molester Kill Messages","color":"red"}
tag @s[tag=molesterkillmessages,scores={Basic_Shift=1..}] remove molesterkillmessages