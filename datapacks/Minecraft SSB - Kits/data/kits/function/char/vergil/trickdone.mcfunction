effect clear @s minecraft:invisibility
attribute @s minecraft:armor modifier remove armor.trick.vergil
attribute @s minecraft:armor_toughness modifier remove tough.trick.vergil
item replace entity @s[tag=!VergilDevilTrigger] armor.head with player_head[custom_name="Vergil",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.vergil",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;-1944059747,-4700758,-2128888949,-707270116],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiMjgwMzczMjJjMTk3ZjdhMDA4MmY4NzY1N2Y2OWIzNTFhODExNjdmMmVlZThiODlmOTllOGMzMWFkNzcxMSJ9fX0="}]}] 1
item replace entity @s[tag=VergilDevilTrigger] armor.head with player_head[custom_name="Devil Trigger",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.vergil",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;1927857700,-931839921,-1471013991,1714197496],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzU3ZGRkOGM5NGIyZmY1Y2YyZjUxODhmNDYxMmI1MjNmNTQzNGI5ZjE3MjYzYTY3ODExYTM5ZDg1NDA3NTQwNiJ9fX0="}]}] 1
item replace entity @s armor.chest with leather_chestplate[custom_name={"color":"dark_aqua","italic":false,"text":"Vergil\'s Clothes"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.chest.vergil",type:"armor",amount:10,operation:"add_value",slot:"chest"}],dyed_color=1463928] 1
item replace entity @s armor.legs with leather_leggings[custom_name={"color":"dark_aqua","italic":false,"text":"Vergil\'s Clothes"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"tough.legs.vergil",type:"armor_toughness",amount:5,operation:"add_value",slot:"legs"}],dyed_color=1462352] 1
item replace entity @s armor.feet with leather_boots[custom_name={"color":"dark_aqua","italic":false,"text":"Vergil\'s Clothes"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"speed.feet.vergil",type:"movement_speed",amount:0.03,operation:"add_value",slot:"feet"}],dyed_color=8606770] 1

tag @s remove VergilInvis
scoreboard players reset @s kits.timer3
