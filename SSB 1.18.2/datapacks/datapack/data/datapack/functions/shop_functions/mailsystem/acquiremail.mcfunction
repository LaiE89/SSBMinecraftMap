### Items ###
# Lucky Block
tellraw @s[scores={Drop_LuckyBlock=1..}] ["",{"text":"\u2606","bold":true,"obfuscated":true,"color":"aqua"},{"text":" You accomplished a quest! Here is your prize. ","bold":true,"color":"aqua"},{"text":"\u2606","bold":true,"obfuscated":true,"color":"aqua"}]
give @s[scores={Drop_LuckyBlock=1..}] gold_block{display:{Name:"[{\"text\":\"Lucky Block\",\"italic\":false,\"color\":\"gold\"}]",Lore:["[{\"text\":\"Put this on the podium in the Shop\",\"italic\":false,\"color\":\"yellow\"}]"]},CanPlaceOn:["diamond_block"]} 1
scoreboard players remove @s[scores={Drop_LuckyBlock=1..}] Drop_LuckyBlock 1

# LevelUp
tellraw @s[scores={Drop_LevelUp=1..}] ["",{"text":"\u2606","bold":true,"obfuscated":true,"color":"aqua"},{"text":" You gained a level for slaying monsters! ","bold":true,"color":"aqua"},{"text":"\u2606","bold":true,"obfuscated":true,"color":"aqua"}]
scoreboard players add @s[scores={Drop_LevelUp=1..}] Rank 1
scoreboard players remove @s[scores={Drop_LevelUp=1..}] Drop_LevelUp 1

# Molester
tellraw @s[scores={Drop_Molester=1..}] ["",{"text":"\u2606","bold":true,"obfuscated":true,"color":"aqua"},{"text":" You out-raped the rapist! Here is your prize. ","bold":true,"color":"aqua"},{"text":"\u2606","bold":true,"obfuscated":true,"color":"aqua"}]
give @s[scores={Drop_Molester=1..}] carrot_on_a_stick{Enchantments:[{}],display:{Name:"[{\"text\":\"Molester Kill Messages\",\"italic\":false,\"color\":\"light_purple\"}]",Lore:["[{\"text\":\"An award for those who molested a pedo...\",\"color\":\"red\"},{\"text\":\"\",\"italic\":false}]","[{\"text\":\"\",\"italic\":false}]","[{\"text\":\"Right click to activate\",\"italic\":false,\"color\":\"dark_purple\"}]","[{\"text\":\"Sneak to deactivate\",\"italic\":false,\"color\":\"dark_purple\"}]"]},CustomModelData:75}
scoreboard players remove @s[scores={Drop_Molester=1..}] Drop_Molester 1

### Resetting ###
clear @s paper{display:{Name:"[{\"text\":\"Mail\",\"italic\":false}]"}} 1
item replace entity @s enderchest.26 with paper{display:{Name:"[{\"text\":\"Mail\",\"italic\":false}]"}} 1