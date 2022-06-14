### Rare Drops ###
execute if entity @s[nbt={Inventory:[{tag:{LevelUp:1}}]}] run scoreboard players add @s Drop_LevelUp 1
execute if entity @s[nbt={Inventory:[{tag:{Molester:1}}]}] run scoreboard players add @s Drop_Molester 1

execute if entity @s[nbt={Inventory:[{tag:{Mail:1}}]}] run function datapack:labyrinth_functions/raredrops/genericdrop
scoreboard players reset @s MailItem