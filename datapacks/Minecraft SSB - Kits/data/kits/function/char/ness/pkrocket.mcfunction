particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode neutral @a[distance=..40] ~ ~ ~ 2 0.5 1
tag @s add NessPKRocket
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/ness/nesspassive2
effect clear @s minecraft:levitation
effect give @s minecraft:levitation 1 0 true
effect clear @s invisibility
effect clear @s resistance
effect clear @s weakness
effect clear @s speed

item replace entity @s armor.head with player_head[custom_name="Ness",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.ness",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;989919320,-1928705138,-1804460592,1218639422],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTlhYjUxN2JmNWQ0Njk4YTBkMTVhNDUxOTBkODMyZjdmZjVhOWI4ZTkyOWFhYjliZDM5ZjIwOTAzZmExNjA3OSJ9fX0="}]}] 1
item replace entity @s armor.chest with leather_chestplate[custom_name={"color":"gold","italic":false,"text":"Ness\'s Shirt"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.chest.ness",type:"armor",amount:10,operation:"add_value",slot:"chest"}],dyed_color=16701501] 1
item replace entity @s armor.legs with leather_leggings[custom_name={"color":"gold","italic":false,"text":"Ness\'s Pants"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"tough.legs.ness",type:"armor_toughness",amount:4,operation:"add_value",slot:"legs"}],dyed_color=3949738] 1
item replace entity @s armor.feet with leather_boots[custom_name={"color":"gold","italic":false,"text":"Ness\'s Shoes"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"speed.feet.ness",type:"movement_speed",amount:0.02,operation:"add_value",slot:"feet"}],dyed_color=11546150] 1

kill @e[type=armor_stand,tag=pkthunderness]
kill @e[type=minecraft:interaction,tag=pkthunderinteraction]
tag @s remove NessInThunder
scoreboard players reset @s kits.timer
