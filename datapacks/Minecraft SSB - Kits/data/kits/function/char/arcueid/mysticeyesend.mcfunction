playsound minecraft:entity.cat.hiss neutral @a[distance=..20] ~ ~ ~ 3 2 1
particle flash ~ ~1 ~ 0 0 0 0 1 force
effect clear @s minecraft:speed
clear @s minecraft:player_head[custom_name="Red Arcueid"]
item replace entity @s armor.head with player_head[custom_name="Arcueid",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.arcueid",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;839023935,-1429911372,-1641760510,1816825842],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTlhZmZlMWVhYzEwNGFkOGRkYmVmODhhYWFjNWYwYTA3NmMzZTNjNWU4ODZlMDc0ZmE1OThkMjQzZmMxNDdiOCJ9fX0="}]}] 1
tag @s remove ArcueidMysticEyes
scoreboard players reset @s kits.timer