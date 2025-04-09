clear @s netherite_boots[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"}]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_boots",components:{"minecraft:custom_name":{"color":"dark_red","italic":false,"text":"Berserker Armor"}}}}]
item replace entity @s armor.feet with netherite_boots[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"speed.feet.guts",type:"movement_speed",amount:0.1,operation:"add_value",slot:"feet"}]] 1
