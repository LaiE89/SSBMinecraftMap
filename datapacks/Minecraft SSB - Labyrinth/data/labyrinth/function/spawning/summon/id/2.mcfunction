# id: 2
## Merges Michael Myers data to spawned entity
# attributes
attribute @s max_health base set 50
attribute @s movement_speed base set 0.2
data modify entity @s Health set value 50

# items
item replace entity @s armor.head with player_head[profile={id:[I;-2081989179,-1726199157,-1425478510,1807372832],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWQzZDBhNWYyNTg3OTFhZmMyNDU3NDg3NWE1MTNiMWE0NWRhNGE4M2EwZDU4ZDdjMjQxOTg1Y2I1ZTU3NDhiNiJ9fX0="}]}]
item replace entity @s armor.chest with leather_chestplate[trim={pattern:vex,material:netherite},attribute_modifiers=[{type:knockback_resistance,amount:0.5,slot:chest,operation:add_value,id:"1751848464520"}],dyed_color=3949665,unbreakable={}]
item replace entity @s armor.legs with leather_leggings[trim={pattern:wayfinder,material:netherite},dyed_color=3949665,unbreakable={}]
item replace entity @s armor.feet with netherite_boots[unbreakable={}]
item replace entity @s weapon.mainhand with iron_sword[attribute_modifiers=[{type:attack_damage,amount:10,slot:mainhand,operation:add_value,id:"1751780165742"}],unbreakable={}]

# data merge
data merge entity @s {Silent:1b}
data merge entity @s {DeathLootTable:"tools:entities/elite"}