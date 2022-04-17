execute as @p[nbt={Inventory:[{id:"minecraft:diamond",tag:{display:{Lore:['[{"text":"Labyrinth Loot","italic":false}]']},Enchantments:[{}]}}]}] store result score @s NumberOfItems run clear @p minecraft:diamond{display:{Lore:['[{"text":"Labyrinth Loot","italic":false}]']},Enchantments:[{}]}
scoreboard players set @p NumberOfItems2 10
scoreboard players operation @p NumberOfItems *= @p NumberOfItems2
scoreboard players operation @p Money += @p NumberOfItems
scoreboard players reset @p NumberOfItems