summon armor_stand ~ ~ ~ {DisabledSlots:2039583,Marker:1b,Invulnerable:1,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:0}}},{id:"leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Nightmare Monster\"}"},SkullOwner:{Id:[I;-662637303,-1396817356,-1433066245,1724584990],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTY0MzIwNGE5ZDA3MjI4OGY3MmQyZmQwMmQxODljNWEzYjA0MTM4MzU4YzAyMmZiMmNkNTJlMTE1OTM4NDJmNyJ9fX0="}]}}}}],HandItems:[{},{}],Pose:{Body:[52f,0f,0f],Head:[7f,0f,0f],LeftLeg:[119f,0f,0f],RightLeg:[55f,0f,360f],LeftArm:[335f,0f,0f],RightArm:[286f,0f,0f]},Tags:["baskerville"]}
summon minecraft:wandering_trader ~ ~ ~ {Silent:1b,Team:LabyrinthMob,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Willing:0b,Tags:["baskerville","InLabyrinth"],Offers:{},Attributes:[{Name:generic.movement_speed,Base:1.5}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.5 1 0.5 0 300
particle minecraft:smoke ~ ~ ~ 0.5 1 0.5 0 200
playsound minecraft:entity.phantom.death neutral @a[distance=..50] ~ ~ ~ 10 0 1
scoreboard players set @s Ability3CD 0