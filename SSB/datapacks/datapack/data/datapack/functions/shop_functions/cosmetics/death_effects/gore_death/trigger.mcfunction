execute if entity @s[tag=!goredeatheffect,scores={Basic_COS=1..}] run function datapack:shop_functions/deatheffectsoff
tellraw @s[tag=!goredeatheffect,scores={Basic_COS=1..}] {"text":"Activated Gore Death Effect","color":"green"}
tag @s[tag=!goredeatheffect,scores={Basic_COS=1..}] add goredeatheffect
tellraw @s[tag=goredeatheffect,scores={Basic_Shift=1..}] {"text":"Deactivated Gore Death Effect","color":"red"}
tag @s[tag=goredeatheffect,scores={Basic_Shift=1..}] remove goredeatheffect