effect clear @p[tag=NessInThunder] invisibility
effect clear @p[tag=NessInThunder] resistance
effect clear @p[tag=NessInThunder] weakness
effect clear @p[tag=NessInThunder] speed
effect clear @p[tag=NessInThunder] levitation

item replace entity @p[tag=NessInThunder] armor.head with player_head[custom_name="Ness",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.ness",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;989919320,-1928705138,-1804460592,1218639422],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTlhYjUxN2JmNWQ0Njk4YTBkMTVhNDUxOTBkODMyZjdmZjVhOWI4ZTkyOWFhYjliZDM5ZjIwOTAzZmExNjA3OSJ9fX0="}]}] 1
item replace entity @p[tag=NessInThunder] armor.chest with leather_chestplate[custom_name={"color":"gold","italic":false,"text":"Ness\'s Shirt"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.chest.ness",type:"armor",amount:10,operation:"add_value",slot:"chest"}],dyed_color=16701501] 1
item replace entity @p[tag=NessInThunder] armor.legs with leather_leggings[custom_name={"color":"gold","italic":false,"text":"Ness\'s Pants"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"tough.legs.ness",type:"armor_toughness",amount:4,operation:"add_value",slot:"legs"}],dyed_color=3949738] 1
item replace entity @p[tag=NessInThunder] armor.feet with leather_boots[custom_name={"color":"gold","italic":false,"text":"Ness\'s Shoes"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"speed.feet.ness",type:"movement_speed",amount:0.02,operation:"add_value",slot:"feet"}],dyed_color=11546150] 1

tp @p[tag=NessInThunder] @e[type=armor_stand,tag=pkthunderness,limit=1,sort=nearest]
kill @e[type=armor_stand,tag=pkthunderness]
kill @e[type=minecraft:interaction,tag=pkthunderinteraction]
scoreboard players reset @p[tag=NessInThunder] kits.timer
tag @p[tag=NessInThunder] remove NessInThunder
