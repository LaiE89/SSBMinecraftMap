tag @p add Guts
replaceitem entity @p armor.head minecraft:player_head{display:{Name:"{\"text\":\"Guts\"}"},SkullOwner:{Id:[I;1759574606,2018787427,-1958257033,-418398299],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTMyNDBhYjAyMzA3YmM0M2I5NDlmOTI1N2Y2NmY1ZDQzNjY3Zjk0ZGJjYjEyZTVmMzEyNGQxNWFlMTg4YTVkYiJ9fX0="}]}},Enchantments:[{id:"blast_protection",lvl:5},{id:"protection",lvl:3},{id:"projectile_protection",lvl:2}],Unbreakable:1} 1
replaceitem entity @p armor.chest leather_chestplate{display:{Name:'[{"text":"The Black Swordsman\'s Chestplate","italic":false,"color":"dark_red"}]',color:1908001},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:12,Operation:0,UUID:[I;-120628,28285,201317,-56570],Slot:chest,Name:"generic.armor"},{AttributeName:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I;-120628,28285,201317,-56570],Slot:chest,Name:"generic.armor_toughness"},{AttributeName:"generic.knockback_resistance",Amount:0.7,Operation:0,UUID:[I;-120628,28285,201317,-56570],Slot:chest,Name:"generic.knockback_resistance"}]} 1
replaceitem entity @p armor.legs minecraft:netherite_leggings{display:{Name:'[{"text":"The Black Swordsman\'s Leggings","italic":false,"color":"dark_red"}]'},Unbreakable:1,AttributeModifiers:[{AttributeName:"horse.jump_strength",Amount:0,Operation:0,UUID:[I;-120629,11804,172912,-23608],Slot:legs,Name:"horse.jump_strength"}]}
replaceitem entity @p armor.feet minecraft:netherite_boots{display:{Name:'[{"text":"The Black Swordsman\'s Boots","italic":false,"color":"dark_red"}]'},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.03,Operation:0,UUID:[I;-120629,25606,172259,-51212],Slot:feet,Name:"generic.movement_speed"}]} 1

give @p netherite_sword{display:{Name:'[{"text":"The Dragonslayer","italic":false,"color":"dark_red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Cleave: ","italic":false,"color":"red"},{"text":"SHIFT","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Swing your sword in front of you.","italic":false,"color":"gray"}]','[{"text":"Damages and knocks back enemies.","italic":false,"color":"gray"}]','[{"text":"Deals massive damage to enemies","italic":false,"color":"gray"}]','[{"text":"in front of a wall.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Berserker Rage: ","italic":false,"color":"red"},{"text":"PASSIVE","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Gain strength when you are under","italic":false,"color":"gray"}]','[{"text":"5 hearts. Every attack with the","italic":false,"color":"gray"}]','[{"text":"Dragonslayer will give you","italic":false,"color":"gray"}]','[{"text":"speed for 1 second.","italic":false,"color":"gray"}]']},Enchantments:[{id:knockback,lvl:2},{id:sweeping,lvl:3}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;-120628,12517,194646,-25034],Slot:mainhand,Name:"generic.attack_damage"}],CustomModelData:1} 1
give @p carrot_on_a_stick{display:{Name:'[{"text":"Handcannon","italic":false,"color":"dark_red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Handcannon: ","italic":false,"color":"red"},{"text":"RIGHT CLICK","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Deals damage in front of you.","italic":false,"color":"gray"}]','[{"text":"Deals more damage to enemies","italic":false,"color":"gray"}]','[{"text":"closer to you. When used in the","italic":false,"color":"gray"}]','[{"text":"air, propels you back. Your next","italic":false,"color":"gray"}]','[{"text":"attack within seconds of this","italic":false,"color":"gray"}]','[{"text":"move will be enhanced.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Berserker Armor: ","italic":false,"color":"red"},{"text":"SHIFT","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Equips the berserker armor","italic":false,"color":"gray"}]','[{"text":"which enhances all your stats.","italic":false,"color":"gray"}]','[{"text":"However, you will be suffering","italic":false,"color":"gray"}]','[{"text":"permanent wither damage. To","italic":false,"color":"gray"}]','[{"text":"unequip, kill an enemy. You also","italic":false,"color":"gray"}]','[{"text":"gain health when killing enemies.","italic":false,"color":"gray"}]']},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-120628,24442,195043,-48884],Slot:mainhand,Name:"generic.attack_damage"},{AttributeName:"generic.armor",Amount:4,Operation:0,UUID:[I;-120628,24442,195043,-48884],Slot:mainhand,Name:"generic.armor"},{AttributeName:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;-120628,24442,195043,-48884],Slot:mainhand,Name:"generic.knockback_resistance"},{AttributeName:"generic.armor_toughness",Amount:10,Operation:0,UUID:[I;-120628,24442,195043,-48884],Slot:mainhand,Name:"generic.armor_toughness"}],CustomModelData:2} 1
give @p crossbow{display:{Name:'[{"text":"Guts\' Crossbow","italic":false,"color":"dark_red"}]'},Enchantments:[{id:multishot,lvl:1},{id:piercing,lvl:4}],Unbreakable:1} 1

replaceitem entity @p container.9 minecraft:arrow 64

scoreboard players set @p Ability1CD 98
scoreboard players set @p Ability2CD 98