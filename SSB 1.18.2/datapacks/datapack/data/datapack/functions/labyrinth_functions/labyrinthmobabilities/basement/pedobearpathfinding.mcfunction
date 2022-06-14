summon minecraft:wandering_trader ~ ~ ~ {Silent:1b,Team:LabyrinthMob,WanderTarget:{X:-5110,Y:30,Z:167},Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Willing:0b,Tags:["pedobearstand","InLabyrinth"],Offers:{},Attributes:[{Name:generic.movement_speed,Base:1}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}

playsound minecraft:item.crossbow.quick_charge_2 neutral @a[distance=..20] ~ ~ ~ 10 0 1
execute at @p rotated ~ 0 run particle minecraft:sweep_attack ^ ^1.3 ^1
data modify entity @s NoAI set value 1b
tellraw @p {"text":"ITS RAPIN TIME!!!","bold":true,"color":"red"}
tag @p add pedobeargrabbed
tag @s add pedobeargrab