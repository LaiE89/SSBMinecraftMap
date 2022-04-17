execute if block -197 73 472 minecraft:gold_block unless entity @a[tag=RollingLuckyBlock] run tag @a[scores={PlacedLuckyBlock=1..}] add RollingLuckyBlock

execute if block -197 73 472 minecraft:gold_block run setblock -197 73 472 air replace

####

scoreboard players add @s[tag=RollingLuckyBlock] LuckyBlockTime 1
loot give @s[scores={LuckyBlockTime=60}] loot mctools:chests/loot_table
execute as @s[tag=RollingLuckyBlock,scores={LuckyBlockTime=1}] positioned -197 72 472 run summon armor_stand ~ ~ ~ {Tags:["cosmetics","luckyblock"],DisabledSlots:2039583,NoGravity:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Lucky Block (yellow)\"}"},SkullOwner:{Id:[I;-1209863671,61164294,-1096935103,-1854381602],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE5ZDI4YTg2MzJmYTRkODdjYTE5OWJiYzJlODhjZjM2OGRlZGQ1NTc0NzAxN2FlMzQ4NDM1NjlmN2E2MzRjNSJ9fX0="}]}}}}]}
execute as @e[type=armor_stand,tag=luckyblock] at @s run tp @s ~ ~0.015 ~ ~5 ~
execute as @s[tag=RollingLuckyBlock,scores={LuckyBlockTime=60}] at @e[type=armor_stand,tag=luckyblock] run particle minecraft:firework ~ ~1 ~ 0 0 0 0.5 200

execute as @s[tag=RollingLuckyBlock,scores={LuckyBlockTime=60},nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Death Effect\",\"italic\":false}]"}}}]}] run execute at @e[type=armor_stand,tag=luckyblock] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 300
execute as @s[tag=RollingLuckyBlock,scores={LuckyBlockTime=60},nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Death Effect\",\"italic\":false}]"}}}]}] run execute at @e[type=armor_stand,tag=luckyblock] run playsound minecraft:entity.ender_dragon.death neutral @a[distance=..20] ~ ~ ~ 3 2 1

execute as @s[tag=RollingLuckyBlock,scores={LuckyBlockTime=60},nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Kill Messages\",\"italic\":false}]"}}}]}] run execute at @e[type=armor_stand,tag=luckyblock] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 300
execute as @s[tag=RollingLuckyBlock,scores={LuckyBlockTime=60},nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Kill Messages\",\"italic\":false}]"}}}]}] run execute at @e[type=armor_stand,tag=luckyblock] run playsound minecraft:entity.ender_dragon.death neutral @a[distance=..20] ~ ~ ~ 3 2 1

execute as @s[tag=RollingLuckyBlock,scores={LuckyBlockTime=60},nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Particles\",\"italic\":false}]"}}}]}] run execute at @e[type=armor_stand,tag=luckyblock] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 300
execute as @s[tag=RollingLuckyBlock,scores={LuckyBlockTime=60},nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Particles\",\"italic\":false}]"}}}]}] run execute at @e[type=armor_stand,tag=luckyblock] run playsound minecraft:entity.ender_dragon.death neutral @a[distance=..20] ~ ~ ~ 3 2 1 

execute as @s[tag=RollingLuckyBlock,scores={LuckyBlockTime=60}] as @e[type=armor_stand,tag=luckyblock] at @s run kill @s
execute if entity @a[tag=RollingLuckyBlock] run execute positioned -196.00 73.28 472.26 run playsound minecraft:block.note_block.pling neutral @a[distance=..10] ~ ~ ~ 1 0 1
tag @s[scores={LuckyBlockTime=60}] remove RollingLuckyBlock
scoreboard players reset @s[scores={LuckyBlockTime=60..}] LuckyBlockTime

####

tellraw @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$10\",\"italic\":false}]"}}}]}] {"text":"You won $10","bold":true,"color":"green"}
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$10\",\"italic\":false}]"}}}]}] Money 10
clear @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$10\",\"italic\":false}]"}}}]}] gold_nugget{display:{Name:"[{\"text\":\"$10\",\"italic\":false}]"}}

tellraw @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$20\",\"italic\":false}]"}}}]}] {"text":"You won $20","bold":true,"color":"green"}
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$20\",\"italic\":false}]"}}}]}] Money 20
clear @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$20\",\"italic\":false}]"}}}]}] gold_nugget{display:{Name:"[{\"text\":\"$20\",\"italic\":false}]"}}

tellraw @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$50\",\"italic\":false}]"}}}]}] {"text":"You won $50","bold":true,"color":"green"}
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$50\",\"italic\":false}]"}}}]}] Money 50
clear @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$50\",\"italic\":false}]"}}}]}] gold_nugget{display:{Name:"[{\"text\":\"$50\",\"italic\":false}]"}}

tellraw @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$100\",\"italic\":false}]"}}}]}] {"text":"You won $100","bold":true,"color":"green"}
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$100\",\"italic\":false}]"}}}]}] Money 100
clear @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"$100\",\"italic\":false}]"}}}]}] gold_nugget{display:{Name:"[{\"text\":\"$100\",\"italic\":false}]"}}

#####

# God Death Effect
tellraw @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Death Effect\",\"italic\":false}]"}}}]}] {"text":"You won the God Death Effects","bold":true,"color":"gold"}
give @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Death Effect\",\"italic\":false}]"}}}]}] carrot_on_a_stick{Enchantments:[{}],display:{Name:"[{\"text\":\"God Death Effect\",\"italic\":false,\"color\":\"gold\"}]",Lore:["[{\"text\":\"Maybe Gods DO bleed...\",\"color\":\"red\"},{\"text\":\"\",\"italic\":false}]","[{\"text\":\"\",\"italic\":false}]","[{\"text\":\"Right click to activate\",\"italic\":false,\"color\":\"dark_purple\"}]","[{\"text\":\"Sneak to deactivate\",\"italic\":false,\"color\":\"dark_purple\"}]"]},CustomModelData:74}
clear @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Death Effect\",\"italic\":false}]"}}}]}] gold_nugget{display:{Name:"[{\"text\":\"God Death Effect\",\"italic\":false}]"}}

# God Kill Messages
tellraw @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Kill Messages\",\"italic\":false}]"}}}]}] {"text":"You won the God Kill Messages","bold":true,"color":"gold"}
give @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Kill Messages\",\"italic\":false}]"}}}]}] carrot_on_a_stick{Enchantments:[{}],display:{Name:"[{\"text\":\"God Kill Messages\",\"italic\":false,\"color\":\"gold\"}]",Lore:["[{\"text\":\"Thou shall smite thy enemies...\",\"color\":\"red\"},{\"text\":\"\",\"italic\":false}]","[{\"text\":\"\",\"italic\":false}]","[{\"text\":\"Right click to activate\",\"italic\":false,\"color\":\"dark_purple\"}]","[{\"text\":\"Sneak to deactivate\",\"italic\":false,\"color\":\"dark_purple\"}]"]},CustomModelData:75}
clear @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Kill Messages\",\"italic\":false}]"}}}]}] gold_nugget{display:{Name:"[{\"text\":\"God Kill Messages\",\"italic\":false}]"}}

# God Particles
tellraw @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Particles\",\"italic\":false}]"}}}]}] {"text":"You won the God Particles","bold":true,"color":"gold"}
give @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Particles\",\"italic\":false}]"}}}]}] carrot_on_a_stick{Enchantments:[{}],display:{Name:"[{\"text\":\"God Particles\",\"italic\":false,\"color\":\"gold\"}]",Lore:["[{\"text\":\"God is light, and in him is no darkness at all.\",\"color\":\"red\"}]","[{\"text\":\"- 1 John 1:15\",\"color\":\"red\"},{\"text\":\"\",\"italic\":false}]","[{\"text\":\"\",\"italic\":false}]","[{\"text\":\"Right click to activate\",\"italic\":false,\"color\":\"dark_purple\"}]","[{\"text\":\"Sneak to deactivate\",\"italic\":false,\"color\":\"dark_purple\"}]"]},CustomModelData:73}
clear @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"God Particles\",\"italic\":false}]"}}}]}] gold_nugget{display:{Name:"[{\"text\":\"God Particles\",\"italic\":false}]"}}

# Shit Particles
tellraw @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"Shit Particles\",\"italic\":false}]"}}}]}] {"text":"You got Shit","bold":true,"color":"red"}
give @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"Shit Particles\",\"italic\":false}]"}}}]}] carrot_on_a_stick{display:{Name:'[{"text":"Shit Particles","italic":false,"color":"yellow"}]',Lore:['[{"text":"Why are u holding shit","italic":false,"color":"red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Right click to activate","italic":false,"color":"dark_purple"}]','[{"text":"Sneak to deactivate","italic":false,"color":"dark_purple"}]']},CustomModelData:73}
clear @s[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{display:{Name:"[{\"text\":\"Shit Particles\",\"italic\":false}]"}}}]}] gold_nugget{display:{Name:"[{\"text\":\"Shit Particles\",\"italic\":false}]"}}

scoreboard players reset @s[scores={PlacedLuckyBlock=1..}] PlacedLuckyBlock