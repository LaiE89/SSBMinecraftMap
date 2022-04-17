execute unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:paper",tag:{display:{Name:'[{"text":"Mail","italic":false}]'}}}]}] run tellraw @s[tag=!GladiatorMail,scores={NumLuckyBlocks=..0}] {"text":"You have no mail...","color":"red"}

# Win Gladiators Mail
# execute unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:paper",tag:{display:{Name:'[{"text":"Mail","italic":false}]'}}}]}] run tellraw @s[tag=GladiatorMail] {"text":"Congratulations!!! You beat the gladiator arena! Here is your prize.","color":"green"}
# execute unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:paper",tag:{display:{Name:'[{"text":"Mail","italic":false}]'}}}]}] run give @s[tag=GladiatorMail] carrot_on_a_stick{display:{Name:"[{\"text\":\"Gladiator King Kill Messages\",\"italic\":false,\"color\":\"dark_red\"}]",Lore:["[{\"text\":\"Right click to activate\",\"italic\":false}]","[{\"text\":\"Sneak to deactivate\",\"italic\":false}]"]},Enchantments:[{id:sweeping,lvl:1}]}
# execute unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:paper",tag:{display:{Name:'[{"text":"Mail","italic":false}]'}}}]}] run tag @s[tag=GladiatorMail] remove GladiatorMail

# Win Lucky Blocks
execute unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:paper",tag:{display:{Name:'[{"text":"Mail","italic":false}]'}}}]}] run tellraw @s[scores={NumLuckyBlocks=1..}] {"text":"Congratulations!!! You accomplished a quest! Here is your prize.","color":"green"}
execute unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:paper",tag:{display:{Name:'[{"text":"Mail","italic":false}]'}}}]}] run give @s[scores={NumLuckyBlocks=1..}] gold_block{display:{Name:"[{\"text\":\"Lucky Block\",\"italic\":false,\"color\":\"gold\"}]",Lore:["[{\"text\":\"Put this on the podium in the Shop\",\"italic\":false,\"color\":\"yellow\"}]"]},CanPlaceOn:["diamond_block"]} 1
execute unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:paper",tag:{display:{Name:'[{"text":"Mail","italic":false}]'}}}]}] run scoreboard players remove @s[scores={NumLuckyBlocks=1..}] NumLuckyBlocks 1

execute unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:paper",tag:{display:{Name:'[{"text":"Mail","italic":false}]'}}}]}] run clear @s paper{display:{Name:"[{\"text\":\"Mail\",\"italic\":false}]"}} 1
execute unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:paper",tag:{display:{Name:'[{"text":"Mail","italic":false}]'}}}]}] run replaceitem entity @s enderchest.26 paper{display:{Name:"[{\"text\":\"Mail\",\"italic\":false}]"}} 1
