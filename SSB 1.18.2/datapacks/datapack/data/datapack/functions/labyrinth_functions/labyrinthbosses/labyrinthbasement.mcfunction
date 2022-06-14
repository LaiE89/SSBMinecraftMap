# Effects of players in the basement
effect give @a[tag=LabyrinthBasement] blindness 2 0 true
effect give @a[tag=LabyrinthBasement] slowness 2 0 true
scoreboard players add @a[tag=LabyrinthBasement] LabyrinthTimer 1
playsound minecraft:block.note_block.basedrum neutral @a[tag=LabyrinthBasement,scores={LabyrinthTimer=40}] ~ ~ ~ 0.5 0 0.5
playsound minecraft:block.note_block.basedrum neutral @a[tag=LabyrinthBasement,scores={LabyrinthTimer=50}] ~ ~ ~ 0.5 0 0.5
scoreboard players reset @a[tag=LabyrinthBasement,scores={LabyrinthTimer=50..}] LabyrinthTimer

# Walter Effects
execute at @a[tag=LabyrinthBasement] if entity @e[type=zombie,tag=BasementGriefer,distance=..8] run playsound minecraft:block.note_block.basedrum neutral @a[tag=LabyrinthBasement,scores={LabyrinthTimer=20}] ~ ~ ~ 0.5 0 0.5
execute at @a[tag=LabyrinthBasement] if entity @e[type=zombie,tag=BasementGriefer,distance=..8] run playsound minecraft:block.note_block.basedrum neutral @a[tag=LabyrinthBasement,scores={LabyrinthTimer=25}] ~ ~ ~ 0.5 0 0.5
execute at @a[tag=LabyrinthBasement] if entity @e[type=zombie,tag=BasementGriefer,distance=..8] run scoreboard players reset @a[tag=LabyrinthBasement,scores={LabyrinthTimer=25..}] LabyrinthTimer

execute at @e[type=zombie,tag=BasementGriefer] run execute if entity @a[tag=LabyrinthBasement,distance=..4] run effect give @a[distance=..4] minecraft:nausea 7 0 true
execute at @e[type=zombie,tag=BasementGriefer] run execute if entity @a[tag=LabyrinthBasement,distance=..4] run playsound minecraft:entity.enderman.death neutral @a[tag=LabyrinthBasement,distance=..4] ~ ~ ~ 1 0 1

# Checking if player is in the basement
execute if entity @a[tag=InLabyrinth,tag=!LabyrinthBasement,x=-5026,y=40,z=143,dx=-31,dy=-4,dz=33] run kill @e[type=item,x=-5026,y=40,z=143,dx=-31,dy=-4,dz=33]
tag @a[tag=InLabyrinth,tag=!LabyrinthBasement,x=-5026,y=40,z=143,dx=-31,dy=-4,dz=33] add LabyrinthBasement

# Summoning Walter
execute unless entity @e[type=zombie,tag=BasementGriefer] if entity @a[tag=LabyrinthBasement] run summon minecraft:zombie -5029 36 146 {Health:200,PersistenceRequired:1b,Attributes:[{Name:"generic.max_health",Base:100},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0.3f},{Name:"generic.attack_damage",Base:20}],Silent:1,DeathLootTable:"mctools:entities/miniboss",ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:15775433}},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:15775433}},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:15775433}},Count:1},{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Walter\"}"},SkullOwner:{Id:[I;208392827,-1092923877,-1852723855,1130506103],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDRiNzQxZTM4ZTkyYWJlZDE1YmNmMTVkNmJhM2E4MzdmODliYmE1Y2Y2YzAwYTFjNmRjNDkwNWZkNzFkMDFhOCJ9fX0="}]}}},Count:1}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["BasementGriefer","Boss"],ArmorDropChances:[0F,0F,0F,0F]}

# Checking if player left the basement
execute as @a[tag=LabyrinthBasement] at @s run execute unless entity @s[x=-5026,y=40,z=143,dx=-31,dy=-4,dz=33] run tag @s remove LabyrinthBasement
execute as @e[type=zombie,tag=BasementGriefer] at @s run execute unless entity @a[tag=LabyrinthBasement] run kill @s