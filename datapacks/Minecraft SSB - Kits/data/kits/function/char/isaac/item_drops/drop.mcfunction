## Initiates Item Drops Passive
# Drops specific items in a pre-determined order
# execute as @p[tag=Isaac] at @s run function kits:char/isaac/item_drops/order

execute store result score @p[tag=Isaac] kits.timer6 run random value 1..7
execute if score @p[tag=Isaac] kits.timer6 matches 1..2 run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["IsaacObject","IsaacObjectFlesh","IsaacObjectMotion"],Pose:{Head:[0f,0f,180f]},DisabledSlots:4144959,equipment:{head:{id:rotten_flesh,Count:1}}}
execute if score @p[tag=Isaac] kits.timer6 matches 3..4 run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["IsaacObject","IsaacObjectBone","IsaacObjectMotion"],Pose:{Head:[0f,90f,180f]},DisabledSlots:4144959,equipment:{head:{id:bone,Count:1}}}
execute if score @p[tag=Isaac] kits.timer6 matches 5..6 run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["IsaacObject","IsaacObjectCollectable","IsaacObjectPlasmaEnergy","IsaacObjectMotion"],Pose:{Head:[0f,0f,180f]},DisabledSlots:4144959,equipment:{head:{id:iron_ingot,Count:1}}}
execute if score @p[tag=Isaac] kits.timer6 matches 7 run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["IsaacObject","IsaacObjectCollectable","IsaacObjectMedpack","IsaacObjectMotion"],Pose:{Head:[0f,0f,180f]},DisabledSlots:4144959,equipment:{head:{id:nether_star,Count:1}}}

# Applies random motion to item
execute as @e[limit=1,sort=nearest,tag=IsaacObjectMotion,type=armor_stand] at @s run function kits:char/isaac/item_drops/random_motion
