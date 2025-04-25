scoreboard players set @s kits.id 15
tag @s add Ekko
give @s carrot_on_a_stick[custom_name={"color":"dark_aqua","italic":false,"text":"Ekko\'s Lightsaber"},lore=[[""],[{"color":"aqua","italic":false,"text":"Timewinder:"},{"color":"dark_purple","text":" "},{"color":"yellow","text":"RIGHT CLICK"}],{"color":"gray","italic":false,"text":"Throws a disc that deals"},{"color":"gray","italic":false,"text":"damage, slows, and applies"},{"color":"gray","italic":false,"text":"1 resonance stack. After"},{"color":"gray","italic":false,"text":"a few seconds, the disc"},{"color":"gray","italic":false,"text":"returns to you, dealing"},[{"color":"gray","italic":false,"text":"the same effects."}],[""],[{"color":"aqua","italic":false,"text":"Phase Dive:"},{"color":"dark_purple","text":" "},{"color":"yellow","text":"SHIFT"}],{"color":"gray","italic":false,"text":"Roll forward. Shift again"},{"color":"gray","italic":false,"text":"to teleport to the target"},{"color":"gray","italic":false,"text":"you are facing. Deals damage"},{"color":"gray","italic":false,"text":"and applies 1 resonance stack"},[{"color":"gray","italic":false,"text":"to the target."}],[""],[{"color":"aqua","italic":false,"text":"Z-Drive:"},{"color":"gray","text":" "},{"color":"yellow","text":"PASSIVE"}],{"color":"gray","italic":false,"text":"Every melee attack applies"},{"color":"gray","italic":false,"text":"a resonance stack to a target."},{"color":"gray","italic":false,"text":"If a target has 3 stacks, they"},{"color":"gray","italic":false,"text":"take massive damage and you gain"},{"color":"gray","italic":false,"text":"a speed boost. This passive"},{"color":"gray","italic":false,"text":"cannot work on that same target"},{"color":"gray","italic":false,"text":"for a while."}],unbreakable={},custom_model_data={floats:[12]},custom_data={KitItem:1b},attribute_modifiers=[{id:"speed.mainhand.ekko",type:"attack_speed",amount:20,operation:"add_value",slot:"mainhand"},{id:"damage.mainhand.ekko",type:"attack_damage",amount:5,operation:"add_value",slot:"mainhand"}]] 1
give @s carrot_on_a_stick[custom_name={"color":"dark_aqua","italic":false,"text":"Ekko\'s Z-Drive"},lore=[[""],[{"color":"aqua","italic":false,"text":"Parallel Convergence:"},{"color":"dark_purple","text":" "},{"color":"yellow","text":"RIGHT CLICK"}],{"color":"gray","italic":false,"text":"Summons a field where you are"},{"color":"gray","italic":false,"text":"facing. Every enemy inside the"},{"color":"gray","italic":false,"text":"field is slowed. When you enter"},{"color":"gray","italic":false,"text":"the field, every enemy inside is"},[{"color":"gray","italic":false,"text":"stunned. You also gain a shield."}],[""],[{"color":"aqua","italic":false,"text":"Chronobreak:"},{"color":"dark_purple","text":" "},{"color":"yellow","text":"SHIFT"}],{"color":"gray","italic":false,"text":"Teleports behind and restores"},{"color":"gray","italic":false,"text":"your health. Deals damage and"},{"color":"gray","italic":false,"text":"applies one resonance stack"},{"color":"gray","italic":false,"text":"to nearby enemies."}],unbreakable={},custom_model_data={floats:[29]},custom_data={KitItem:1b}] 1

item replace entity @s armor.head with player_head[custom_name="Ekko",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.ekko",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;2066439364,1965938359,-606513213,-1035861710],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTcxYjk5ZjQ3NGQyOTg5NzcxZmRmYmVlNDIwODlkNDZjYzVhOGRkYWE2YjE5MzY1ZTFlNTQyNjZmODE3NzE1In19fQ=="}]}] 1
item replace entity @s armor.chest with leather_chestplate[custom_name={"color":"dark_aqua","italic":false,"text":"Ekko\'s Shirt"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.chest.ekko",type:"armor",amount:10,operation:"add_value",slot:"chest"}],dyed_color=11314255] 1
item replace entity @s armor.legs with leather_leggings[custom_name={"color":"dark_aqua","italic":false,"text":"Ekko\'s Pants"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"tough.legs.ekko",type:"armor_toughness",amount:4,operation:"add_value",slot:"legs"}],dyed_color=8547346] 1
item replace entity @s armor.feet with leather_boots[custom_name={"color":"dark_aqua","italic":false,"text":"Ekko\'s Shoes"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"speed.feet.ekko",type:"movement_speed",amount:0.02,operation:"add_value",slot:"feet"}],dyed_color=4673362] 1

scoreboard players set @s kits.ability1CD 98
scoreboard players set @s kits.ability2CD 98
scoreboard players set @s kits.ability3CD 298
scoreboard players set @s kits.ability4CD 598

data remove storage kits:kits ekko

# Phase Dive Attack Timer 
scoreboard players reset @s kits.timer

# Phase Dive Roll Timer
scoreboard players set @s kits.timer2 0 

# Chronobreak record data delay
scoreboard players reset @s kits.timer3

# Chronobreak checkpoint index
scoreboard players reset @s kits.timer4

# Convergence Draw Schedule Timer
scoreboard players set @s kits.timer5 10