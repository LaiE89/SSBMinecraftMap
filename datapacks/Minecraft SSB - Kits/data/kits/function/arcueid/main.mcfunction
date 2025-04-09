# Ability CDs
title @s[tag=!ArcueidRed] actionbar ["",{"text":"Rip Apart:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Mystic Eyes:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability2CD"}},{"text":"/350","color":"white"},{"text":" || "},{"text":"Vacuum:","color":"light_purple"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability3CD"}},{"text":"/500","color":"white"},{"text":" || "},{"text":"Chains:","color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability4CD"}},{"text":"/1000","color":"white"}]
title @s[tag=ArcueidRed] actionbar ["",{"text":"Rip Apart:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Mystic Eyes Active:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.timer"},"color":"dark_red"},{"text":"/150","color":"dark_red"},{"text":" || "},{"text":"Vacuum:","color":"light_purple"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability3CD"}},{"text":"/500","color":"white"},{"text":" || "},{"text":"Chains:","color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability4CD"}},{"text":"/1000","color":"white"}]

# Rip Apart
scoreboard players add @s[scores={kits.criterion.attack=1..}] kits.ability1CD 20
scoreboard players set @s[scores={kits.ability1CD=101..}] kits.ability1CD 100

scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/arcueid/claws] as @s[scores={kits.ability1CD=100..}] at @s run function kits:arcueid/weapon1cos

# Red Arcueid
scoreboard players add @s[scores={kits.ability2CD=..349}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/arcueid/claws] as @s[scores={kits.ability2CD=350..}] at @s run function kits:arcueid/weapon1shift

effect give @s[tag=ArcueidRed,scores={kits.criterion.attack=1..}] regeneration 1 2 true

scoreboard players add @s[tag=ArcueidRed] kits.timer 1
execute at @s[tag=ArcueidRed,scores={kits.timer=150..}] run playsound minecraft:entity.cat.hiss neutral @a[distance=..20] ~ ~ ~ 3 2 1
execute at @s[tag=ArcueidRed,scores={kits.timer=150..}] run particle flash ~ ~1 ~ 0 0 0 0 1 force
clear @s[tag=ArcueidRed,scores={kits.timer=150..}] minecraft:player_head[custom_name="Red Arcueid"]
item replace entity @s[tag=ArcueidRed,scores={kits.timer=150..}] armor.head with player_head[custom_name="Arcueid",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.arcueid",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;839023935,-1429911372,-1641760510,1816825842],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTlhZmZlMWVhYzEwNGFkOGRkYmVmODhhYWFjNWYwYTA3NmMzZTNjNWU4ODZlMDc0ZmE1OThkMjQzZmMxNDdiOCJ9fX0="}]}] 1
tag @s[tag=ArcueidRed,scores={kits.timer=150..}] remove ArcueidRed
scoreboard players reset @s[scores={kits.timer=150..}] kits.timer

# Vacuum
scoreboard players add @s[scores={kits.ability3CD=..499}] kits.ability3CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/arcueid/marblephantasm] as @s[scores={kits.ability3CD=500..}] at @s run function kits:arcueid/weapon2cos
execute as @e[type=area_effect_cloud,tag=ArcueidVacuum] at @s run function kits:arcueid/vacuum

# Chains
scoreboard players add @s[scores={kits.ability4CD=..999}] kits.ability4CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/arcueid/marblephantasm] as @s[scores={kits.ability4CD=1000..}] at @s run function kits:arcueid/weapon2shift
execute as @e[type=area_effect_cloud,tag=ArcueidChains] at @s run function kits:arcueid/chains
scoreboard players reset @s[scores={kits.timer2=50..}] kits.timer2
