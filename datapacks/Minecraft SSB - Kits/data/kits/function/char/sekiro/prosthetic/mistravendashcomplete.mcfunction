schedule clear kits:char/sekiro/prosthetic/mistravendashensure

tag @s remove Invincible
effect clear @s minecraft:invisibility
attribute @s minecraft:gravity modifier remove gravity.mistraven.sekiro
item replace entity @s armor.head with minecraft:player_head[minecraft:custom_name={text:"Sekiro",color:"gold",underlined:true,bold:true,italic:false},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.sekiro",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;1443274142,-1472182277,-2101906182,-1767265986],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGUwZDEzYzM5YTY1ZjM2MzhiNzI4OTU4ZGNhMGQ1NGJmYmY0OTQ3OWViYjg4ZWQ5ZGM3MjliNzZlMDYyMjk5NiJ9fX0="}]}] 1
item replace entity @s armor.chest with leather_chestplate[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}],trim={pattern:vex,material:netherite},custom_data={KitItem:1b},dyed_color=10244903,attribute_modifiers=[{type:armor,amount:11,slot:chest,id:"armor.chest.sekiro",operation:add_value}],unbreakable={}]
item replace entity @s armor.legs with netherite_leggings[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}],trim={pattern:raiser,material:copper},custom_data={KitItem:1b},attribute_modifiers=[{type:armor_toughness,amount:5,slot:legs,id:"tough.legs.sekiro",operation:add_value}],unbreakable={}]
item replace entity @s armor.feet with leather_boots[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}],trim={pattern:silence,material:quartz},custom_data={KitItem:1b},dyed_color=6969652,attribute_modifiers=[{type:movement_speed,amount:0.04,slot:feet,id:"speed.feet.sekiro",operation:add_value},{id:"safe_fall.feet.sekiro",type:"safe_fall_distance",amount:5,operation:"add_value",slot:"feet"},{id:"jump.feet.sekiro",type:"jump_strength",amount:0.05,operation:"add_value",slot:"feet"}],unbreakable={}]
function kits:char/sekiro/prosthetic/mistravenreset

tp @s ~ ~ ~ facing entity @e[type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth,sort=nearest,limit=1]

schedule function kits:char/sekiro/prosthetic/mistravendelaychasingslice 3t replace
schedule function kits:char/sekiro/chasingslice/reset 10t replace

# Cause Explosion
kill @e[type=minecraft:area_effect_cloud,tag=SekiroMistRavenDestination]
execute as @e[type=minecraft:area_effect_cloud,tag=SekiroMistRavenExplosive] at @s run function kits:char/sekiro/prosthetic/mistravenexplosion
