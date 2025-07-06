summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,Tags:["EdwardDebris","EdwardObjectMotion","projectile"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:dirt",Count:1b}}}
summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,Tags:["EdwardDebris","EdwardObjectMotion","projectile"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:dirt",Count:1b}}}
summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,Tags:["EdwardDebris","EdwardObjectMotion","projectile"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:dirt",Count:1b}}}

loot spawn ~ ~-100 ~ mine ~ ~-0.5 ~ diamond_pickaxe[enchantments={"minecraft:silk_touch":1}]
execute as @e[type=minecraft:armor_stand,tag=EdwardDebris] run execute positioned ~ ~-100 ~ run data modify entity @s equipment.head.id set string entity @e[type=item,limit=1,sort=nearest] Item.id
execute positioned ~ ~-100 ~ run kill @e[type=item,sort=nearest,limit=1]

# Applies random motion to item
execute as @e[type=armor_stand,tag=EdwardObjectMotion,limit=1,sort=nearest] at @s run function kits:char/edward/deconstruct/debrismotion
execute as @e[type=armor_stand,tag=EdwardObjectMotion,limit=1,sort=nearest] at @s run function kits:char/edward/deconstruct/debrismotion
execute as @e[type=armor_stand,tag=EdwardObjectMotion,limit=1,sort=nearest] at @s run function kits:char/edward/deconstruct/debrismotion
