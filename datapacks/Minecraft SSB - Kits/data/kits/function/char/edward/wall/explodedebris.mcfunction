summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,Tags:["EdwardDebris","EdwardObjectMotion","projectile"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:dirt",Count:1b}}}
summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,Tags:["EdwardDebris","EdwardObjectMotion","projectile"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:dirt",Count:1b}}}
summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,Tags:["EdwardDebris","EdwardObjectMotion","projectile"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:dirt",Count:1b}}}
summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,Tags:["EdwardDebris","EdwardObjectMotion","projectile"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:dirt",Count:1b}}}
summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,Tags:["EdwardDebris","EdwardObjectMotion","projectile"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:dirt",Count:1b}}}

execute as @e[type=minecraft:armor_stand,tag=EdwardDebris] run data modify entity @s equipment.head.id set from entity @e[type=minecraft:block_display,tag=EdwardWall,limit=1,sort=nearest] block_state.Name

# Applies random motion to item
execute as @e[type=armor_stand,tag=EdwardObjectMotion,limit=1,sort=nearest] at @s run function kits:char/edward/deconstruct/debrismotion
execute as @e[type=armor_stand,tag=EdwardObjectMotion,limit=1,sort=nearest] at @s run function kits:char/edward/deconstruct/debrismotion
execute as @e[type=armor_stand,tag=EdwardObjectMotion,limit=1,sort=nearest] at @s run function kits:char/edward/deconstruct/debrismotion
execute as @e[type=armor_stand,tag=EdwardObjectMotion,limit=1,sort=nearest] at @s run function kits:char/edward/deconstruct/debrismotion
execute as @e[type=armor_stand,tag=EdwardObjectMotion,limit=1,sort=nearest] at @s run function kits:char/edward/deconstruct/debrismotion
