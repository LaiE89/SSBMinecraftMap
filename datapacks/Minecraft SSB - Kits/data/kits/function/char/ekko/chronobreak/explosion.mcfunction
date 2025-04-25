execute as @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth] at @s run damage @s 15 bypass:player_attack by @p[tag=Ekko]
scoreboard players add @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth,tag=!EkkoPassiveCD] kits.specific.ekkoResonance 1

particle minecraft:flash ~ ~1 ~ 0 0 0 0 10
summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["Ekko_VFX_ExpandingSphere","Ekko_Chronobreak_Explosion"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:5}
function kits:char/ekko/expanding_sphere/play {"Inaccuracy":"75","Speed":"150","Limit":"5","R":"0","G":"99","B":"99","Size":"100"}
playsound minecraft:block.end_gateway.spawn neutral @a[distance=..50] ~ ~ ~ 2 0.5 1
playsound minecraft:entity.illusioner.cast_spell neutral @a[distance=..50] ~ ~ ~ 2 0.5 1
playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..50] ~ ~ ~ 2 2 1

effect give @s minecraft:instant_health 1 2 true
effect clear @s resistance
effect clear @s invisibility
item replace entity @s armor.head with player_head[custom_name="Ekko",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.ekko",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;2066439364,1965938359,-606513213,-1035861710],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTcxYjk5ZjQ3NGQyOTg5NzcxZmRmYmVlNDIwODlkNDZjYzVhOGRkYWE2YjE5MzY1ZTFlNTQyNjZmODE3NzE1In19fQ=="}]}] 1
item replace entity @s armor.chest with leather_chestplate[custom_name={"color":"dark_aqua","italic":false,"text":"Ekko\'s Shirt"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.chest.ekko",type:"armor",amount:10,operation:"add_value",slot:"chest"}],dyed_color=11314255] 1
item replace entity @s armor.legs with leather_leggings[custom_name={"color":"dark_aqua","italic":false,"text":"Ekko\'s Pants"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"tough.legs.ekko",type:"armor_toughness",amount:4,operation:"add_value",slot:"legs"}],dyed_color=8547346] 1
item replace entity @s armor.feet with leather_boots[custom_name={"color":"dark_aqua","italic":false,"text":"Ekko\'s Shoes"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"speed.feet.ekko",type:"movement_speed",amount:0.02,operation:"add_value",slot:"feet"}],dyed_color=4673362] 1
tag @s remove Invincible
tag @s remove EkkoChronobreakTeleporting

scoreboard players reset @s kits.timer4
