# Guts Passive
effect give @p[tag=Guts,scores={Health=..10}] minecraft:strength 1 0 true

# Abilities CD
title @p[tag=Guts] actionbar ["",{"text":"Cleave: ","color":"dark_red"},{"score":{"name":"@p[tag=Guts]","objective":"Ability1CD"},"color":"white"},{"text":" || "},{"text":"Handcannon: ","color":"red"},{"score":{"name":"@p[tag=Guts]","objective":"Ability2CD"},"color":"white"}]

# Cleave
scoreboard players add @p[tag=Guts,scores={Ability1CD=..99}] Ability1CD 1
execute as @p[gamemode=!spectator,tag=Guts,scores={Basic_Shift=1..}] as @p[tag=Guts,scores={Ability1CD=100..},predicate=datapack:guts_items/dragonslayer] at @s run function datapack:guts_functions/weapon1shift

execute as @e[type=area_effect_cloud,tag=DragonslayerSwing] at @s run function datapack:guts_functions/dragonslayerparticles

effect give @e[tag=GutsBleeding] wither 1 9 true
effect give @e[tag=GutsBleeding] slowness 1 1 true
execute at @e[tag=GutsBleeding] run particle minecraft:block minecraft:redstone_block ~ ~0.5 ~ 0.4 1 0.4 0 10

execute if entity @e[tag=GutsBleeding] run scoreboard players add @p[tag=Guts] Timer2 1
execute if entity @p[tag=Guts,scores={Timer2=50..}] run tag @e[tag=GutsBleeding] remove GutsBleeding
scoreboard players reset @p[tag=Guts,scores={Timer2=50..}] Timer2

# Berserker Armor
execute as @p[gamemode=!spectator,tag=!GutsBerserker,tag=Guts,scores={Basic_Shift=1..},predicate=datapack:guts_items/handcannon] at @s run function datapack:guts_functions/weapon2shift 

effect give @p[tag=Guts,tag=GutsBerserker] minecraft:wither 10 9 true
execute at @p[tag=GutsBerserker,tag=Guts] run particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.4 1 0.4 0 5
execute at @p[tag=GutsBerserker,tag=Guts] run particle minecraft:dust 1 0 0 1 ^-0.15 ^1.6 ^-1 0.01 0.01 0.01 10 10
execute at @p[tag=GutsBerserker,tag=Guts] run particle minecraft:dust 1 0 0 1 ^0.15 ^1.6 ^-1 0.01 0.01 0.01 10 10

# Handcannon
scoreboard players add @p[tag=Guts,scores={Ability2CD=..99}] Ability2CD 1
execute as @p[tag=Guts,scores={Basic_COS=1..}] as @p[scores={Ability2CD=100},predicate=datapack:guts_items/handcannon] at @s run function datapack:guts_functions/weapon2cos

# Pivot Swing
scoreboard players add @p[tag=Guts,tag=GutsPivotSwing] Timer 1
execute as @p[tag=Guts,tag=GutsPivotSwing,scores={Basic_NRiteSword=1..}] at @s run function datapack:guts_functions/pivotswing 
tag @p[tag=Guts,tag=GutsPivotSwing,scores={Timer=40..}] remove GutsPivotSwing
scoreboard players reset @p[tag=Guts,scores={Timer=40..}] Timer

# Dragonslayer passive
effect give @p[tag=Guts,scores={Basic_NRiteSword=1..}] minecraft:speed 1 4 true
execute at @p[tag=Guts,scores={Basic_NRiteSword=1..}] run playsound minecraft:block.gravel.fall neutral @a[distance=..15] ~ ~ ~ 1 0.9 1
execute at @p[tag=Guts,scores={Basic_NRiteSword=1..}] run particle minecraft:block minecraft:sand ~ ~1 ~ 2 0 2 0 50

# Fairy Dust passive
item replace entity @p[tag=Guts,tag=GutsBerserker,scores={Basic_Kills=1..}] armor.chest with leather_chestplate{display:{Name:'[{"text":"The Black Swordsman\'s Chestplate","italic":false,"color":"dark_red"}]',color:1908001},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:12,Operation:0,UUID:[I;-120628,28285,201317,-56570],Slot:chest,Name:"generic.armor"},{AttributeName:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I;-120628,28285,201317,-56570],Slot:chest,Name:"generic.armor_toughness"},{AttributeName:"generic.knockback_resistance",Amount:0.7,Operation:0,UUID:[I;-120628,28285,201317,-56570],Slot:chest,Name:"generic.knockback_resistance"}]}
item replace entity @p[tag=Guts,tag=GutsBerserker,scores={Basic_Kills=1..}] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Guts\"}"},SkullOwner:{Id:[I;1759574606,2018787427,-1958257033,-418398299],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTMyNDBhYjAyMzA3YmM0M2I5NDlmOTI1N2Y2NmY1ZDQzNjY3Zjk0ZGJjYjEyZTVmMzEyNGQxNWFlMTg4YTVkYiJ9fX0="}]}},Enchantments:[{id:"blast_protection",lvl:5},{id:"protection",lvl:3},{id:"projectile_protection",lvl:2}],Unbreakable:1} 1
item replace entity @p[tag=Guts,tag=GutsBerserker,scores={Basic_Kills=1..}] armor.legs with minecraft:netherite_leggings{display:{Name:'[{"text":"The Black Swordsman\'s Leggings","italic":false,"color":"dark_red"}]'},Unbreakable:1,AttributeModifiers:[{AttributeName:"horse.jump_strength",Amount:0,Operation:0,UUID:[I;-120629,11804,172912,-23608],Slot:legs,Name:"horse.jump_strength"}]}
item replace entity @p[tag=Guts,tag=GutsBerserker,scores={Basic_Kills=1..}] armor.feet with minecraft:netherite_boots{display:{Name:'[{"text":"The Black Swordsman\'s Boots","italic":false,"color":"dark_red"}]'},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.03,Operation:0,UUID:[I;-120629,25606,172259,-51212],Slot:feet,Name:"generic.movement_speed"}]} 1
effect clear @p[tag=Guts,tag=GutsBerserker,scores={Basic_Kills=1..}] minecraft:wither
execute at @p[tag=Guts,tag=GutsBerserker,scores={Basic_Kills=1..}] run playsound minecraft:block.iron_door.open neutral @a[distance=..20] ~ ~ ~ 10 0 1
execute at @p[tag=Guts,tag=GutsBerserker,scores={Basic_Kills=1..}] run particle minecraft:composter ~ ~ ~ 0.4 1 0.4 0 100
execute at @p[tag=Guts,tag=GutsBerserker,scores={Basic_Kills=1..}] run particle minecraft:enchant ~ ~ ~ 0.4 1 0.4 0 100
tag @p[tag=GutsBerserker,tag=Guts,scores={Basic_Kills=1..}] remove GutsBerserker
effect give @p[tag=Guts,scores={Basic_Kills=1..}] minecraft:instant_health

# Preventing removing Berserker Armor
execute as @p[tag=GutsBerserker,tag=Guts] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Berserker Armor\"}"}}}]}] run clear @s minecraft:player_head{display:{Name:"{\"text\":\"Berserker Armor\"}"}}
execute as @p[tag=GutsBerserker,tag=Guts] at @s unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate",tag:{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]'}}}]}] run clear @s netherite_chestplate{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]'}}
execute as @p[tag=GutsBerserker,tag=Guts] at @s unless entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:netherite_leggings",tag:{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]'}}}]}] run clear @s netherite_leggings{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]'}}
execute as @p[tag=GutsBerserker,tag=Guts] at @s unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]'}}}]}] run clear @s netherite_boots{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]'}}

execute as @p[tag=GutsBerserker,tag=Guts] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Berserker Helmet\"}"}}}]}] run item replace entity @p[tag=Guts] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Berserker Armor\"}"},Enchantments:[{id:protection,lvl:5}],SkullOwner:{Id:[I;342476256,1676427335,-1077575036,1046140064],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTI3NTU1YmI5Y2U0MWIxOTQ0M2FjZDc5ZjU5YjgyYWRlNGQ2ODNiZjc3NTgxZTZkM2IxNmY1MDJiZjU0ODY5In19fQ=="}]}}}
execute as @p[tag=GutsBerserker,tag=Guts] at @s unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate",tag:{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]'}}}]}] run item replace entity @p[tag=Guts] armor.chest with netherite_chestplate{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]',color:1908001},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:20,Operation:0,UUID:[I;-120628,13721,20578,-27442],Slot:chest,Name:"generic.armor"},{AttributeName:"generic.armor_toughness",Amount:10,Operation:0,UUID:[I;-120628,13721,20578,-27442],Slot:chest,Name:"generic.armor_toughness"}]} 1
execute as @p[tag=GutsBerserker,tag=Guts] at @s unless entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:netherite_leggings",tag:{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]'}}}]}] run item replace entity @p[tag=Guts] armor.legs with netherite_leggings{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]',color:1908001},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;-120628,27782,205815,-55564],Slot:legs,Name:"generic.knockback_resistance"},{AttributeName:"generic.attack_speed",Amount:50,Operation:0,UUID:[I;-120628,27782,205815,-55564],Slot:legs,Name:"generic.attack_speed"}]} 1
execute as @p[tag=GutsBerserker,tag=Guts] at @s unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]'}}}]}] run item replace entity @p[tag=Guts] armor.feet with netherite_boots{display:{Name:'[{"text":"Berserker Armor","italic":false,"color":"dark_red"}]',color:1908001},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.1,Operation:0,UUID:[I;-120628,12940,205936,-25880],Slot:feet,Name:"generic.movement_speed"}]} 1
