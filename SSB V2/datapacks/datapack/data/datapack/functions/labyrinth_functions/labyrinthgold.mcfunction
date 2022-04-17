execute as @p[nbt={Inventory:[{id:"minecraft:gold_ingot",tag:{display:{Lore:['[{"text":"Labyrinth Loot","italic":false}]']},Enchantments:[{}]}}]}] store result score @s NumberOfItems run clear @p minecraft:gold_ingot{display:{Lore:['[{"text":"Labyrinth Loot","italic":false}]']},Enchantments:[{}]}
scoreboard players set @p NumberOfItems2 5
scoreboard players operation @p NumberOfItems *= @p NumberOfItems2
scoreboard players operation @p Money += @p NumberOfItems
scoreboard players reset @p NumberOfItems