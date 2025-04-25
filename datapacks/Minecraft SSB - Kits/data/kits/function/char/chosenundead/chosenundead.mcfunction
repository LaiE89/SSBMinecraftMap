function kits:main/reset
execute if entity @a[tag=ChosenUndead] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=ChosenUndead] run function kits:char/chosenundead/kit
