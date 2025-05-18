#particle smoke ~ ~ ~ 1 0.3 1 0 100 force
particle dust{color:[0.000,0.000,0.000],scale:3} ~ ~ ~ 1 0 1 0 50 force
particle dust{color:[1.000,0.000,0.000],scale:2} ~ ~0.1 ~ 1 0.1 1 0 5 force

scoreboard players add @s kits.timer 1
item replace entity @s[scores={kits.timer=100..}] armor.head with player_head[custom_name="Alucard",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.alucard",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;-1150411815,-1562621224,-1156881623,-1676449110],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTAxMWVhNTg0Y2FhZTg3OWFjN2ExNzc3ZjZjZmFiOWMyYjVkZjJlOTA2OThjNDE0Yzk3NWRjOTIyNDc5ZDdlYyJ9fX0="}]}] 1
item replace entity @s[scores={kits.timer=100..}] armor.chest with leather_chestplate[custom_name={"color":"dark_red","italic":false,"text":"Alucard\'s Coat"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.chest.alucard",type:"armor",amount:10,operation:"add_value",slot:"chest"},{id:"tough.chest.alucard",type:"armor_toughness",amount:1,operation:"add_value",slot:"chest"}],dyed_color=11546150] 1
item replace entity @s[scores={kits.timer=100..}] armor.legs with leather_leggings[custom_name={"color":"dark_red","italic":false,"text":"Alucard\'s Pants"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"kb.legs.alucard",type:"knockback_resistance",amount:0.3,operation:"add_value",slot:"legs"}],dyed_color=4673362] 1
item replace entity @s[scores={kits.timer=100..}] armor.feet with leather_boots[custom_name={"color":"dark_red","italic":false,"text":"Alucard\'s Boots"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"tough.feet.alucard",type:"armor_toughness",amount:2,operation:"add_value",slot:"feet"}],dyed_color=4673362] 1

tag @s[scores={kits.timer=100..}] remove Invincible
tag @s[scores={kits.timer=100..}] remove AlucardWraith
scoreboard players reset @s[scores={kits.timer=100..}] kits.timer