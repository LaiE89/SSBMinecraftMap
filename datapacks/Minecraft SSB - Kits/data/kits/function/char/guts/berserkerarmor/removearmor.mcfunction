clear @s minecraft:player_head[custom_name="Berserker Armor"]
clear @s leather_chestplate[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"}]
clear @s netherite_leggings[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"}]
clear @s netherite_boots[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"}]

item replace entity @s armor.head with player_head[custom_name="Guts",unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.guts",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;1759574606,2018787427,-1958257033,-418398299],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTMyNDBhYjAyMzA3YmM0M2I5NDlmOTI1N2Y2NmY1ZDQzNjY3Zjk0ZGJjYjEyZTVmMzEyNGQxNWFlMTg4YTVkYiJ9fX0="}]}] 1
item replace entity @s armor.chest with leather_chestplate[custom_name={"color":"dark_red","italic":false,"text":"The Black Swordsman\'s Chestplate"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.chest.guts",type:"armor",amount:13,operation:"add_value",slot:"chest"},{id:"kb.chest.guts",type:"knockback_resistance",amount:0.5,operation:"add_value",slot:"chest"}],dyed_color=1908001] 1
item replace entity @s armor.legs with netherite_leggings[custom_name={"color":"dark_red","italic":false,"text":"The Black Swordsman\'s Leggings"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"tough.legs.guts",type:"armor_toughness",amount:8,operation:"add_value",slot:"legs"}]] 1
item replace entity @s armor.feet with netherite_boots[custom_name={"color":"dark_red","italic":false,"text":"The Black Swordsman\'s Boots"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"speed.feet.guts",type:"movement_speed",amount:0.02,operation:"add_value",slot:"feet"}]] 1

playsound minecraft:block.iron_door.open neutral @a[distance=..20] ~ ~ ~ 10 0 1
particle composter ~ ~1 ~ 0.4 0.4 0.4 0 25 force
particle enchant ~ ~1 ~ 0.4 0.4 0.4 0 100 force
effect give @s minecraft:instant_health 1 1 true
scoreboard players reset @s kits.timer5
tag @s remove GutsBerserker
