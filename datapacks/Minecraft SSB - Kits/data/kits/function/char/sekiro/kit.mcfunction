scoreboard players set @s kits.id 46
tag @s add Sekiro

give @s iron_sword[custom_name={"text":"Kusabimaru","italic":false,"color":"gold"},lore=["",[{"text":"Deflect: ","italic":false,"color":"red"},{"text":"RIGHT CLICK","italic":false,"color":"yellow"}],[{"text":"Block attacks coming at you.","italic":false,"color":"gray"}],[{"text":"Block at the exact time to","italic":false,"color":"gray"}],[{"text":"perform a deflect. You cannot","italic":false,"color":"gray"}],[{"text":"block if your posture is broken.","italic":false,"color":"gray"}],"",[{"text":"Mortal Draw: ","italic":false,"color":"dark_red"},{"text":"SHIFT","italic":false,"color":"yellow"}],[{"text":"Costs 3 Spirit Emblems per Slash","italic":false,"color":"dark_gray"}],[{"text":"Hold shift to slash in front of you.","italic":false,"color":"gray"}],[{"text":"Keep holding shift to slash again.","italic":false,"color":"gray"}],"",[{"text":"Posture: ","italic":false,"color":"gold"},{"text":"PASSIVE","italic":false,"color":"yellow"}],[{"text":"Enemies you attack or deflect","italic":false,"color":"gray"}],[{"text":"take posture damage. Once their","italic":false,"color":"gray"}],[{"text":"posture is broken, your next attack","italic":false,"color":"gray"}],[{"text":"deals massive damage to them. You","italic":false,"color":"gray"}],[{"text":"also have a posture meter. Deflect","italic":false,"color":"gray"}],[{"text":"to avoid getting posture broken even","italic":false,"color":"gray"}],[{"text":"if your posture meter is full. ","italic":false,"color":"gray"}],"",[{"text":"Spirit Emblems:","italic":false,"color":"aqua"},{"text":" ","italic":false,"color":"dark_aqua"},{"text":"PASSIVE","italic":false,"color":"yellow"}],[{"text":"Kill enemies to recover Spirit","italic":false,"color":"gray"}],[{"text":"Emblems. You can also eat golden","italic":false,"color":"gray"}],[{"text":"carrots to recover Spirit Emblems.","italic":false,"color":"gray"}]],attribute_modifiers=[{type:attack_damage,amount:5,slot:mainhand,id:"damage.mainhand.sekiro",operation:add_value},{type:attack_speed,amount:20,slot:mainhand,id:"speed.mainhand.sekiro",operation:add_value}],unbreakable={},blocks_attacks={block_delay_seconds:0,disable_cooldown_scale:0,damage_reductions:[{base:0,factor:1.0}],block_sound:"entity.zombie.attack_iron_door"},custom_data={KitItem:1b},custom_model_data={floats:[36]}]
give @s carrot_on_a_stick[custom_name=[{"text":"Prosthetic Tools","italic":false,"color":"light_purple"}],lore=["",[{"text":"Use Prosthetic:","italic":false,"color":"dark_red"},{"text":" ","italic":false,"color":"dark_purple"},{"text":"RIGHT CLICK","italic":false,"color":"yellow"}],[{"text":"Use the selected prosthetic.","italic":false,"color":"gray"}],"",[{"text":"Switch Prosthetic: ","italic":false,"color":"dark_red"},{"text":"SHIFT","italic":false,"color":"yellow"}],[{"text":"Switch between the following prosthetics:","italic":false,"color":"gray"}],"",[{"text":"1. Shurikens","italic":false,"color":"red"}],[{"text":"Costs 1 Spirit Emblem","italic":false,"color":"dark_gray"}],[{"text":"Throw a shuriken.","italic":false,"color":"gray"}],"",[{"text":"2. Mist Raven","italic":false,"color":"red"}],[{"text":"Costs 2 Spirit Emblems","italic":false,"color":"dark_gray"}],[{"text":"Become invincible temporarily. If you are","italic":false,"color":"gray"}],[{"text":"hit during this time, you dash in a direction","italic":false,"color":"gray"}],[{"text":"and leave an explosive trail.","italic":false,"color":"gray"}],"",[{"text":"3. Firecracker","italic":false,"color":"red"}],[{"text":"Costs 3 Spirit Emblems","italic":false,"color":"dark_gray"}],[{"text":"Throw fireworks that explode. Slows and","italic":false,"color":"gray"}],[{"text":"weakens enemies caught in the explosion.","italic":false,"color":"gray"}],"",[{"text":"Chasing Slice: ","italic":false,"color":"aqua"},{"text":"PASSIVE","italic":false,"color":"yellow"}],[{"text":"After successfully landing any prosthetic, if","italic":false,"color":"gray"}],[{"text":"you switch to Kusabimaru within a short time,","italic":false,"color":"gray"}],[{"text":"you will dash forwards and slash.","italic":false,"color":"gray"}]],unbreakable={},custom_data={KitItem:1b},custom_model_data={floats:[67]}]

item replace entity @s armor.head with minecraft:player_head[minecraft:custom_name={text:"Sekiro",color:"gold",underlined:true,bold:true,italic:false},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.sekiro",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;1443274142,-1472182277,-2101906182,-1767265986],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGUwZDEzYzM5YTY1ZjM2MzhiNzI4OTU4ZGNhMGQ1NGJmYmY0OTQ3OWViYjg4ZWQ5ZGM3MjliNzZlMDYyMjk5NiJ9fX0="}]}] 1
item replace entity @s armor.chest with leather_chestplate[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}],trim={pattern:vex,material:netherite},custom_data={KitItem:1b},dyed_color=10244903,attribute_modifiers=[{type:armor,amount:11,slot:chest,id:"armor.chest.sekiro",operation:add_value}],unbreakable={}]
item replace entity @s armor.legs with netherite_leggings[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}],trim={pattern:raiser,material:copper},custom_data={KitItem:1b},attribute_modifiers=[{type:armor_toughness,amount:5,slot:legs,id:"tough.legs.sekiro",operation:add_value}],unbreakable={}]
item replace entity @s armor.feet with leather_boots[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}],trim={pattern:silence,material:quartz},custom_data={KitItem:1b},dyed_color=6969652,attribute_modifiers=[{type:movement_speed,amount:0.04,slot:feet,id:"speed.feet.sekiro",operation:add_value},{id:"safe_fall.feet.sekiro",type:"safe_fall_distance",amount:5,operation:"add_value",slot:"feet"},{id:"jump.feet.sekiro",type:"jump_strength",amount:0.05,operation:"add_value",slot:"feet"}],unbreakable={}]

scoreboard players reset @e kits.specific.sekiroPosture
scoreboard players set @s kits.specific.sekiroPosture 0
scoreboard players reset @e kits.specific.sekiroPostureTimer

# Detecting holding block
scoreboard players set @s kits.timer 3

# Random deflect sound
scoreboard players reset @s kits.timer2

# Spirit Emblems
scoreboard players set @s kits.timer3 20

# Prosthetic Selection
scoreboard players set @s kits.timer4 0

# Falling Statistic
scoreboard players reset @s kits.timer5

# Multiplier for your posture when you take damage / deflect / block
scoreboard players reset @s kits.timer6

# Multiplier for enemy posture when you deflect / block + multiplier for posture regain delay for enemies
scoreboard players reset @s kits.timer7

# Temp Block / Damage
scoreboard players reset @s kits.timer8

# Damage blocked multiplier
scoreboard players reset @s kits.timer9

# Abilities
scoreboard players set @s kits.ability1CD 18
scoreboard players set @s kits.ability2CD 8
scoreboard players set @s kits.ability3CD 3
scoreboard players set @s kits.ability4CD 23
scoreboard players set @s kits.ability5CD 18
