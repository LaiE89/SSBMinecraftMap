tag @p add Lucina
replaceitem entity @p armor.head minecraft:player_head{display:{Name:"{\"text\":\"Lucina\"}"},Enchantments:[{id:protection,lvl:3}],SkullOwner:{Id:[I;-248313969,-909163223,-1818595079,142453624],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzAxNjQyODczYmQxODkyZGFhMjMyNmNmYTUyMDJjMDcwMGM4YjAxMTg5ZmVjOTJlYzY0ZmY0OGZmZTgxYTllMCJ9fX0="}]}}}
replaceitem entity @p armor.chest leather_chestplate{Unbreakable:1,display:{color:1587807,Name:'[{"text":"Lucina\'s Armor","italic":false,"color":"dark_aqua"}]'},AttributeModifiers:[{AttributeName:"generic.armor",Amount:12,Operation:0,UUID:[I;-121220,1368,181537,-2736],Slot:chest,Name:"generic.armor"}]} 1
replaceitem entity @p armor.legs netherite_leggings{Unbreakable:1,display:{Name:'[{"text":"Lucina\'s Armor","italic":false,"color":"dark_aqua"}]'},AttributeModifiers:[{AttributeName:"generic.armor_toughness",Amount:8,Operation:0,UUID:[I;-121220,4968,181537,-9936],Slot:legs,Name:"generic.armor_toughness"}]} 1
replaceitem entity @p armor.feet leather_boots{Unbreakable:1,display:{color:1587807,Name:'[{"text":"Lucina\'s Boots","italic":false,"color":"dark_aqua"}]'},AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.05,Operation:0,UUID:[I;-121220,3568,181537,-7136],Slot:feet,Name:"generic.movement_speed"}]} 1

give @p iron_sword{Unbreakable:1,display:{Name:'[{"text":"Parallel Falchion","italic":false,"color":"aqua"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Counter:","italic":false,"color":"dark_aqua"},{"text":" ","color":"dark_purple"},{"text":"SHIFT","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Blocks an enemy\'s attack. If","italic":false,"color":"gray"}]','[{"text":"successfully blocked,","italic":false,"color":"gray"}]','[{"text":"your next attack will be","italic":false,"color":"gray"}]','[{"text":"enhanced.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Dancing Blade: ","italic":false,"color":"dark_aqua"},{"text":"PASSIVE","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"If you land two attacks","italic":false,"color":"gray"}]','[{"text":"without being hurt, you","italic":false,"color":"gray"}]','[{"text":"will activate Dancing Blade.","italic":false,"color":"gray"}]','[{"text":"In Dancing Blade, you take","italic":false,"color":"gray"}]','[{"text":"no knockback from melee","italic":false,"color":"gray"}]','[{"text":"attacks and you gain a shield.","italic":false,"color":"gray"}]','[{"text":"If you land five attacks,","italic":false,"color":"gray"}]','[{"text":"your fifth attack will deal","italic":false,"color":"gray"}]','[{"text":"massive damage and launch the","italic":false,"color":"gray"}]','[{"text":"enemy backwards.","italic":false,"color":"gray"}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-121220,32456,182532,-64912],Slot:mainhand,Name:"generic.attack_damage"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-121220,32556,182532,-65112],Slot:mainhand,Name:"generic.attack_speed"}],CustomModelData:64} 1
give @p carrot_on_a_stick{Unbreakable:1,display:{Name:'[{"text":"Lucina\'s Skills","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Critical Hit:","italic":false,"color":"dark_aqua"},{"text":" ","color":"dark_purple"},{"text":"RIGHT CLICK","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Dash forwards, dealing","italic":false,"color":"gray"}]','[{"text":"damage to enemies in the","italic":false,"color":"gray"}]','[{"text":"way.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Dolphin Slash: ","italic":false,"color":"dark_aqua"},{"text":"SHIFT","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Jumps upwards, damaging and","italic":false,"color":"gray"}]','[{"text":"lifting up nearby enemies.","italic":false,"color":"gray"}]']},CustomModelData:33} 1

scoreboard players set @p Timer 0
scoreboard players set @p Ability1CD 198
scoreboard players set @p Ability2CD 98
scoreboard players set @p Ability3CD 98