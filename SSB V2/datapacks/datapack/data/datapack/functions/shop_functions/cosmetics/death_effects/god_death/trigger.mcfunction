execute if entity @s[tag=!goddeatheffect,scores={COS=1..}] run function datapack:shop_functions/deatheffectsoff
tellraw @s[tag=!goddeatheffect,scores={COS=1..}] {"text":"Activated God Death Effect","color":"green"}
tag @s[tag=!goddeatheffect,scores={COS=1..}] add goddeatheffect
tellraw @s[tag=goddeatheffect,scores={Shift=1..}] {"text":"Deactivated God Death Effect","color":"red"}
tag @s[tag=goddeatheffect,scores={Shift=1..}] remove goddeatheffect

