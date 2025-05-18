clear @s netherite_leggings[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"}]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:custom_name":{"color":"dark_red","italic":false,"text":"Berserker Armor"}}}}]
item replace entity @s armor.legs with netherite_leggings[custom_name={"color":"dark_red","italic":false,"text":"Berserker Armor"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"kb.legs.guts",type:"knockback_resistance",amount:1,operation:"add_value",slot:"legs"}]] 1
