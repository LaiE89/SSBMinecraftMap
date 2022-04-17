replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"Tracer\"}"},SkullOwner:{Id:[I;-178355574,1316372508,-1144092141,1843100736],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmJlYjY3Njc2ZWE5NjhjNmI1NDNhOTIyZjczMzhkNTc1M2NjZjQzMjA1YjdhNmRlMDg0M2VmMmQyYzhlNWMwMyJ9fX0="}]}}} 1
replaceitem entity @s armor.chest leather_chestplate{display:{Name:'[{"text":"Tracer\'s Shirt","italic":false,"color":"aqua"}]',color:10773832},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:6,Operation:0,UUID:[I;-120631,30303,131251,-60606],Slot:chest,Name:"generic.armor"}]} 1
replaceitem entity @s armor.legs leather_leggings{display:{Name:'[{"text":"Tracer\'s Pants","italic":false,"color":"aqua"}]',color:16351261},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;-120631,12754,131354,-25508],Slot:legs,Name:"generic.armor_toughness"}]} 1 
replaceitem entity @s armor.feet leather_boots{display:{Name:'[{"text":"Tracer\'s Shoes","italic":false,"color":"aqua"}]',color:16351261},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.03,Operation:0,UUID:[I;-120631,29489,131437,-58978],Slot:feet,Name:"generic.movement_speed"}]} 1
effect clear @s invisibility
effect clear @s resistance
effect clear @s regeneration
effect clear @s levitation
tag @s remove TracerRecall
kill @e[type=minecraft:area_effect_cloud,tag=TracerRecallLocation]