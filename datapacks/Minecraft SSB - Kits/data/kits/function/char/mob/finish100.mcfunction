particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.05 100 force
clear @s minecraft:player_head[custom_name="???"]
item replace entity @s armor.head with player_head[custom_name="Mob",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.mob",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;-361714426,-675064884,-1113263697,499195002],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM0Nzg3ZTFjOWVjZTRiM2MyMzE5Y2U2YzdhOWFlNjA3MWVmNDZiOTU3Nzg5Y2JiMDRlNTJhZjM0MGE0NjAwNSJ9fX0="}]}] 1
effect clear @s minecraft:absorption
effect clear @s minecraft:strength
tag @s remove Mob100Percent
scoreboard players reset @s kits.timer
