clear @s minecraft:light_blue_glazed_terracotta
kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:light_blue_glazed_terracotta"}}]
item replace entity @s armor.head with light_blue_glazed_terracotta 1
