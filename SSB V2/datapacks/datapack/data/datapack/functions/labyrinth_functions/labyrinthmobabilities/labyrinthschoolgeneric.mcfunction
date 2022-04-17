# Light Flicker at Get Out
execute positioned -5029.00 73.28 69.53 run execute as @a[distance=..20,limit=1,sort=nearest] at @s run scoreboard players add @s LabyrinthTimer 1
execute positioned -5029.00 73.28 69.53 run execute unless entity @a[distance=..20] run setblock -5038 72 77 minecraft:white_concrete replace
execute positioned -5029.00 73.28 69.53 run execute unless entity @a[distance=..20] run setblock -5020 72 77 minecraft:white_concrete replace

execute as @a[scores={LabyrinthTimer=25}] run setblock -5038 72 77 minecraft:glowstone replace
execute as @a[scores={LabyrinthTimer=25}] run setblock -5020 72 77 minecraft:glowstone replace
execute as @a[scores={LabyrinthTimer=30}] run setblock -5038 72 77 minecraft:white_concrete replace
execute as @a[scores={LabyrinthTimer=30}] run setblock -5020 72 77 minecraft:white_concrete replace

scoreboard players reset @a[tag=LabyrinthSchool,scores={LabyrinthTimer=30..}] LabyrinthTimer

# Lockers Jumpscare

# Girls Bathroom
execute if entity @a[x=-5070,y=73,z=45,distance=..2] run execute unless entity @e[type=zombie,tag=labyrinthbathroomgirl] run execute positioned -5070 73 45 run tellraw @a[distance=..10] {"text":"Thank you for saving me! I was in the washroom when the school just suddenly turned into this hell. Please bring me back to my family!","bold":true}
execute if entity @a[x=-5070,y=73,z=45,distance=..2] run execute unless entity @e[type=zombie,tag=labyrinthbathroomgirl] run summon minecraft:zombie -5070 73 45 {Health:100,Attributes:[{Name:"generic.max_health",Base:100},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:0.1f},{Name:"generic.movement_speed",Base:0.3f},{Name:"generic.attack_damage",Base:0}],Silent:1,IsBaby:1,DeathLootTable:"mctools:entities/miniboss",ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:16777215}},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:1448864}},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:8355732}},Count:1},{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Sayori\"}"},SkullOwner:{Id:[I;-1376250812,-1725742819,-1151659665,1415031509],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTA3OTk0NGExMWVhNDM2M2Q1NmU1ZjY2Yzc2YzhmMzVlNDA0Yjk2YmFiODcyNzZmYzc4YTI5NGM0ZjI3ZDdlIn19fQ=="}]}}},Count:1}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["labyrinthbathroomgirl"],ArmorDropChances:[0F,0F,0F,0F],Team:LabyrinthMob} 

scoreboard players add @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon] Timer 1
execute at @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,scores={Timer=500..}] run effect give @a[distance=..15] minecraft:slowness 10 2 true
execute at @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,scores={Timer=500..}] run effect give @a[distance=..15] minecraft:blindness 10 0 true
execute at @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,scores={Timer=500..}] run effect give @a[distance=..15] minecraft:instant_damage 1 1 true
execute at @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,scores={Timer=500..}] run playsound minecraft:entity.fox.screech neutral @a[distance=..10] ~ ~ ~ 10 0.5 1
effect give @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,scores={Timer=500..}] minecraft:strength 1000000 2 true
replaceitem entity @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,scores={Timer=500..}] armor.head minecraft:player_head{display:{Name:"{\"text\":\"Corpse\"}"},SkullOwner:{Id:[I;-832056110,1415006791,-1591724331,-453825200],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzJmZThiYTcxMjllZWNjMmUwMzVjYjAzMjQ5ZjBjMWYzYzA1NTAxMWY1M2Y3ZDRkOGRkYTM3MjdjNzQzYjFmMyJ9fX0="}]}}} 1
tag @e[tag=labyrinthbathroomgirl,scores={Timer=500..}] add labyrinthbathroomgirldemon
scoreboard players reset @e[tag=labyrinthbathroomgirl,scores={Timer=500..}] Timer

execute at @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,nbt={HurtTime:10s}] run effect give @a[distance=..15] minecraft:slowness 5 2 true
execute at @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,nbt={HurtTime:10s}] run effect give @a[distance=..15] minecraft:blindness 5 0 true
execute at @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,nbt={HurtTime:10s}] run effect give @a[distance=..15] minecraft:instant_damage
execute at @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,nbt={HurtTime:10s}] run playsound minecraft:entity.fox.screech neutral @a[distance=..10] ~ ~ ~ 10 0.5 1
effect give @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,nbt={HurtTime:10s}] minecraft:strength 1000000 2 true
replaceitem entity @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,nbt={HurtTime:10s}] armor.head minecraft:player_head{display:{Name:"{\"text\":\"Corpse\"}"},SkullOwner:{Id:[I;-832056110,1415006791,-1591724331,-453825200],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzJmZThiYTcxMjllZWNjMmUwMzVjYjAzMjQ5ZjBjMWYzYzA1NTAxMWY1M2Y3ZDRkOGRkYTM3MjdjNzQzYjFmMyJ9fX0="}]}}} 1
tag @e[tag=labyrinthbathroomgirl,nbt={HurtTime:10s}] add labyrinthbathroomgirldemon

# Library
execute as @e[type=skeleton,tag=labyrinthlibrarian] at @s unless entity @s[x=-5086,y=83,z=67,dx=24,dy=-4,dz=-36] run tp @s -5085 79 57
execute if entity @a[tag=InLabyrinth,x=-5086,y=83,z=67,dx=24,dy=-4,dz=-36] unless entity @e[type=skeleton,tag=labyrinthlibrarian,limit=1] run summon minecraft:skeleton -5072 79 55 {Health:100,Silent:1b,DeathLootTable:"mctools:entities/strong_mob",HandItems:[{id:book,tag:{Unbreakable:1,Enchantments:[{id:fire_aspect,lvl:2}]},Count:1},{}],HandDropChances:[0.00f,0.00f],ArmorItems:[{id:leather_boots,tag:{Unbreakable:1,display:{color:4673362}},Count:1},{id:leather_leggings,tag:{Unbreakable:1,display:{color:8606770}},Count:1},{id:leather_chestplate,tag:{Unbreakable:1,display:{color:6192150}},Count:1},{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Labyrinth Librarian"}'},SkullOwner:{Id:[I;-1221770552,82987554,-2010851944,-887493543],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmJlOWUzNWU1MzM2NjFhOGQxYjM4ZmQzODhkYjBlNTgzMzBlYmVlODFkMDY5YWE2ZDAxYTQ3OWFlYmVkMGY1YiJ9fX0="}]}}},Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f],Attributes:[{Name:"generic.attack_damage",Base:8f},{Name:"generic.knockback_resistance",Base:0.8f},{Name:"generic.armor_toughness",Base:5f},{Name:"generic.follow_range",Base:50f},{Name:"generic.movement_speed",Base:0.6f},{Name:"generic.max_health",Base:100F}],Team:LabyrinthMob,Tags:["labyrinthlibrarian"]}
execute if entity @a[tag=InLabyrinth,x=-5086,y=83,z=67,dx=24,dy=-4,dz=-36,scores={Running=0}] run effect give @e[type=skeleton,tag=labyrinthlibrarian,limit=1] slowness 1 3 true
execute if entity @a[tag=InLabyrinth,x=-5086,y=83,z=67,dx=24,dy=-4,dz=-36,scores={Running=1..},limit=1] run effect clear @e[type=skeleton,tag=labyrinthlibrarian,limit=1] slowness