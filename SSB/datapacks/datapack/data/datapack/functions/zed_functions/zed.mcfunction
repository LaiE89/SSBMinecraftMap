tag @p add Zed
give @p carrot_on_a_stick{display:{Name:'[{"text":"Shadow Weapons","italic":false,"color":"dark_red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Razor Shuriken: ","italic":false,"color":"red"},{"text":"RIGHT CLICK","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Throws a shuriken that deals","italic":false,"color":"gray"}]','[{"text":"damage. Your shadows will","italic":false,"color":"gray"}]','[{"text":"also a throw a shuriken if","italic":false,"color":"gray"}]','[{"text":"they are active.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Shadow Slash: ","italic":false,"color":"red"},{"text":"SHIFT","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Deals damage around you.","italic":false,"color":"gray"}]','[{"text":"Your shadows will also","italic":false,"color":"gray"}]','[{"text":"perform this move if they","italic":false,"color":"gray"}]','[{"text":"are active. However, theirs","italic":false,"color":"gray"}]','[{"text":"will slow their surrounding","italic":false,"color":"gray"}]','[{"text":"enemies.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Contempt for the Weak:","italic":false,"color":"red"},{"text":" ","color":"gray"},{"text":"PASSIVE","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Your melee attacks deal","italic":false,"color":"gray"}]','[{"text":"extra damage to targets below","italic":false,"color":"gray"}]','[{"text":"half health.","italic":false,"color":"gray"}]']},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-120629,29805,12125,-59610],Slot:mainhand,Name:"generic.attack_damage"}],CustomModelData:10} 1
give @p carrot_on_a_stick{display:{Name:'[{"text":"Living Shadow","italic":false,"color":"dark_red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Living Shadow:","italic":false,"color":"red"},{"text":" ","color":"dark_purple"},{"text":"RIGHT CLICK","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Throws a living shadow","italic":false,"color":"gray"}]','[{"text":"where you are facing.","italic":false,"color":"gray"}]','[{"text":"Everytime your Shadow","italic":false,"color":"gray"}]','[{"text":"Slash hits an enemy,","italic":false,"color":"gray"}]','[{"text":"lowers this cooldown","italic":false,"color":"gray"}]','[{"text":"by 30 ticks.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Swap: ","italic":false,"color":"red"},{"text":"SHIFT","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Swap places with your","italic":false,"color":"gray"}]','[{"text":"shadow. You can only do","italic":false,"color":"gray"}]','[{"text":"this once per Living","italic":false,"color":"gray"}]','[{"text":"Shadow.","italic":false,"color":"gray"}]']},Unbreakable:1,CustomModelData:27} 1
give @p carrot_on_a_stick{display:{Name:'[{"text":"Death Mark","italic":false,"color":"dark_red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Death Mark:","italic":false,"color":"red"},{"text":" ","color":"dark_purple"},{"text":"RIGHT CLICK","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Marks and teleports to the","italic":false,"color":"gray"}]','[{"text":"enemy you are facing.","italic":false,"color":"gray"}]','[{"text":"Also, you drop a shadow","italic":false,"color":"gray"}]','[{"text":"where you once were.","italic":false,"color":"gray"}]','[{"text":"After a few seconds, the","italic":false,"color":"gray"}]','[{"text":"marked enemy takes","italic":false,"color":"gray"}]','[{"text":"massive damage.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Swap: ","italic":false,"color":"red"},{"text":"SHIFT","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Swap places with your","italic":false,"color":"gray"}]','[{"text":"Death Mark shadow. You","italic":false,"color":"gray"}]','[{"text":"can only do this once per","italic":false,"color":"gray"}]','[{"text":"Death Mark.","italic":false,"color":"gray"}]']},Unbreakable:1,CustomModelData:28} 1

item replace entity @p armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Zed\"}"},Enchantments:[{id:protection,lvl:2}],SkullOwner:{Id:[I;844911766,-109258656,-790211895,-1250175385],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTU1NGEzMTQ2MWZhOTBiNmE3Y2ZjZmRmN2IxNzE2MTg5Y2YzZTdiMTczNDQ0ODg1NmU5YmFhZTc0ZTQ1In19fQ=="}]}}} 1
item replace entity @p armor.chest with netherite_chestplate{display:{Name:'[{"text":"Zed\'s Armor","italic":false,"color":"dark_red"}]'},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:7,Operation:0,UUID:[I;-120629,14374,12910,-28748],Slot:chest,Name:"generic.armor"},{AttributeName:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I;-120629,14374,12910,-28748],Slot:chest,Name:"generic.armor_toughness"}]} 1
item replace entity @p armor.legs with leather_leggings{display:{Name:'[{"text":"Zed\'s Leggings","italic":false,"color":"dark_red"}]',color:9574676},Unbreakable:1} 1
item replace entity @p armor.feet with netherite_boots{display:{Name:'[{"text":"Zed\'s Boots","italic":false,"color":"dark_red"}]',color:9574676},Unbreakable:1,AttributeModifiers:[{AttributeName:"horse.jump_strength",Amount:0,Operation:0,UUID:[I;-120629,23467,193424,-46934],Slot:feet,Name:"horse.jump_strength"}]} 1

scoreboard players set @p Timer3 2
scoreboard players set @p Ability1CD 78
scoreboard players set @p Ability2CD 58
scoreboard players set @p Ability3CD 298
scoreboard players set @p Ability4CD 498