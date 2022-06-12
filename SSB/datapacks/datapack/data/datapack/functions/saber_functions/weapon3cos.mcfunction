tag @s remove SaberStrikeAir
tag @s remove SaberStrikeAir2
tag @s add SaberExcalibur
clear @s iron_sword{display:{Name:'[{"text":"Invisible Air","italic":false,"color":"dark_aqua"}]'}}
give @s iron_sword{Unbreakable:1,display:{Name:'[{"text":"Excalibur","italic":false,"color":"aqua"}]',Lore:['[{"text":"","italic":false}]','[{"text":"EXCALIBAAA: ","italic":false,"color":"aqua"},{"text":"SHIFT","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Releases a wide blast that","italic":false,"color":"gray"}]','[{"text":"deals massive damage. The","italic":false,"color":"gray"}]','[{"text":"blast is blocked by blocks.","italic":false,"color":"gray"}]']},Enchantments:[{id:bane_of_arthropods,lvl:3},{id:smite,lvl:3}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;-121226,21131,3648,-42262],Slot:mainhand,Name:"generic.attack_damage"},{AttributeName:"generic.movement_speed",Amount:0.05,Operation:0,UUID:[I;-121226,21231,3648,-42462],Slot:mainhand,Name:"generic.movement_speed"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-121226,21331,3648,-42662],Slot:mainhand,Name:"generic.attack_speed"}],CustomModelData:62} 1
playsound minecraft:entity.evoker.prepare_summon neutral @a[distance=..40] ~ ~ ~ 3 1.5 1
particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 50
scoreboard players set @s Ability4CD 0