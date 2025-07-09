# id: 1
## Merges Jeff the Killer data to spawned entity
# attributes
attribute @s max_health base set 20
attribute @s movement_speed base set 0.4
data modify entity @s Health set value 20

# items
item replace entity @s armor.head with player_head[profile={id:[I;-1360378353,-371768311,-1840398727,-697071382],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM0MmMwY2ZlZmMwMjJiNWIwZTA2MzNlZWI0NjI2MGFhOThhMjExYTJjZGQ4M2E5MGY4ODlkYzY4OWZjMGE5MSJ9fX0="}]}]
item replace entity @s armor.chest with leather_chestplate[dyed_color=16777215,unbreakable={}]
item replace entity @s armor.legs with netherite_leggings[unbreakable={}]
item replace entity @s armor.feet with netherite_boots[unbreakable={}]
item replace entity @s weapon.mainhand with iron_sword[attribute_modifiers=[{type:attack_damage,amount:7,slot:mainhand,operation:add_value,id:"1751780165742"}],unbreakable={}]

# data merge
data merge entity @s {Silent:1b}
data merge entity @s {DeathLootTable:"tools:entities/elite"}