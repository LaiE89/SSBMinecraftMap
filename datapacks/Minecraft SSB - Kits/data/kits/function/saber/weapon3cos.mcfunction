tag @s remove SaberStrikeAir
tag @s remove SaberStrikeAir2
tag @s add SaberExcalibur
clear @s iron_sword[custom_name={"color":"dark_aqua","italic":false,"text":"Invisible Air"}]
give @s iron_sword[custom_name={"color":"aqua","italic":false,"text":"Excalibur"},lore=[[""],[{"color":"aqua","italic":false,"text":"EXCALIBAAA: "},{"color":"yellow","text":"SHIFT"}],{"color":"gray","italic":false,"text":"Releases a wide blast that"},{"color":"gray","italic":false,"text":"deals massive damage. The"},{"color":"gray","italic":false,"text":"blast is blocked by blocks."}],unbreakable={},custom_model_data={floats:[62]},custom_data={KitItem:1b},enchantments={levels:{"minecraft:bane_of_arthropods":3,"minecraft:smite":3}},attribute_modifiers=[{id:"damage.mainhand.saber",type:"attack_damage",amount:8,operation:"add_value",slot:"mainhand"},{id:"speed.mainhand.saber",type:"movement_speed",amount:0.05,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:20,operation:"add_value",slot:"mainhand"}]] 1
playsound minecraft:block.beacon.power_select neutral @a[distance=..40] ~ ~ ~ 3 1.5 1
particle firework ~ ~1 ~ 0 0 0 0.2 50 force
scoreboard players set @s kits.ability4CD 0
