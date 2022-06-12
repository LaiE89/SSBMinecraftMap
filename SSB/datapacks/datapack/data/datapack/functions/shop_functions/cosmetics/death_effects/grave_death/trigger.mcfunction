execute if entity @s[tag=!gravedeatheffect,scores={Basic_COS=1..}] run function datapack:shop_functions/deatheffectsoff
tellraw @s[tag=!gravedeatheffect,scores={Basic_COS=1..}] {"text":"Activated Grave Death Effect","color":"green"}
tag @s[tag=!gravedeatheffect,scores={Basic_COS=1..}] add gravedeatheffect
tellraw @s[tag=gravedeatheffect,scores={Basic_Shift=1..}] {"text":"Deactivated Grave Death Effect","color":"red"}
tag @s[tag=gravedeatheffect,scores={Basic_Shift=1..}] remove gravedeatheffect