item replace entity @p[tag=Kirito] armor.head with player_head[custom_name="Kirito",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.kirito",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;-89796374,-1834592397,-1785461109,-2095674719],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWE5ZTNkNTZhOGM2NDk3ZWY1OTYyNTc3ZjM2NzM4NjliYWJmM2E0NDFmMGIyZjQyY2E4MmMyOWEwZmJkN2Q5YyJ9fX0="}]}] 1
item replace entity @p[tag=Kirito] armor.chest with leather_chestplate[custom_name={"italic":false,"text":"The Real Black Swordsman\'s Shirt"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.chest.kirito",type:"armor",amount:11,operation:"add_value",slot:"chest"},{id:"tough.chest.kirito",type:"armor_toughness",amount:6,operation:"add_value",slot:"chest"}],dyed_color=0] 1
item replace entity @p[tag=Kirito] armor.legs with netherite_leggings[custom_name={"italic":false,"text":"The Real Black Swordsman\'s Pants"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.legs.kirito",type:"armor",amount:2,operation:"add_value",slot:"legs"}]] 1
item replace entity @p[tag=Kirito] armor.feet with leather_boots[custom_name={"italic":false,"text":"The Real Black Swordsman\'s Boots"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"speed.feet.kirito",type:"movement_speed",amount:0.05,operation:"add_value",slot:"feet"}],dyed_color=0] 1

execute if entity @e[tag=KiritoBlitzTarget] as @e[tag=KiritoBlitzTarget,limit=1,sort=nearest] at @s run scoreboard players set @s kits.raycastTick 0
execute if entity @e[tag=KiritoBlitzTarget] as @e[tag=KiritoBlitzTarget,limit=1,sort=nearest] at @s run function kits:char/kirito/blitzendlocation

tag @p[tag=Kirito] remove Invincible
tag @e[tag=KiritoBlitzTarget] remove KiritoBlitzTarget
tag @p[tag=Kirito] remove KiritoBlitz
kill @e[type=area_effect_cloud,tag=KiritoStandingLocation]
kill @s
