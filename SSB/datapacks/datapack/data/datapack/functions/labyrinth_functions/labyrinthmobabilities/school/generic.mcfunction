# Light Flicker at Get Out
execute positioned -5029.00 73.28 69.53 run execute as @a[distance=..20,limit=1,sort=nearest] at @s run scoreboard players add @s LabyrinthTimer 1
execute positioned -5029.00 73.28 69.53 run execute unless entity @a[distance=..20] run setblock -5038 72 77 minecraft:white_concrete replace
execute positioned -5029.00 73.28 69.53 run execute unless entity @a[distance=..20] run setblock -5020 72 77 minecraft:white_concrete replace

execute as @a[scores={LabyrinthTimer=25}] run setblock -5038 72 77 minecraft:glowstone replace
execute as @a[scores={LabyrinthTimer=25}] run setblock -5020 72 77 minecraft:glowstone replace
execute as @a[scores={LabyrinthTimer=30}] run setblock -5038 72 77 minecraft:white_concrete replace
execute as @a[scores={LabyrinthTimer=30}] run setblock -5020 72 77 minecraft:white_concrete replace

scoreboard players reset @a[tag=LabyrinthSchool,scores={LabyrinthTimer=30..}] LabyrinthTimer

# Girls Bathroom
execute as @a[x=-5070,y=73,z=45,distance=..2] at @s unless entity @e[type=zombie,tag=labyrinthbathroomgirl] run function datapack:labyrinth_functions/labyrinthmobabilities/school/summon/summongirl
scoreboard players add @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon] Timer 1
execute as @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,scores={Timer=500..}] at @s run function datapack:labyrinth_functions/labyrinthmobabilities/school/girl
execute as @e[type=zombie,tag=labyrinthbathroomgirl,tag=!labyrinthbathroomgirldemon,nbt={HurtTime:10s}] at @s run function datapack:labyrinth_functions/labyrinthmobabilities/school/girl2

# Library
execute if entity @a[tag=InLabyrinth,x=-5086,y=83,z=67,dx=24,dy=-4,dz=-36] unless entity @e[type=skeleton,tag=labyrinthlibrarian] run summon minecraft:skeleton -5072 79 55 {Health:100,Silent:1b,DeathLootTable:"mctools:entities/strong_mob",HandItems:[{id:book,tag:{Unbreakable:1,Enchantments:[{id:fire_aspect,lvl:2}]},Count:1},{}],HandDropChances:[0.00f,0.00f],ArmorItems:[{id:leather_boots,tag:{Unbreakable:1,display:{color:4673362}},Count:1},{id:leather_leggings,tag:{Unbreakable:1,display:{color:8606770}},Count:1},{id:leather_chestplate,tag:{Unbreakable:1,display:{color:6192150}},Count:1},{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Labyrinth Librarian"}'},SkullOwner:{Id:[I;-1221770552,82987554,-2010851944,-887493543],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmJlOWUzNWU1MzM2NjFhOGQxYjM4ZmQzODhkYjBlNTgzMzBlYmVlODFkMDY5YWE2ZDAxYTQ3OWFlYmVkMGY1YiJ9fX0="}]}}},Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f],Attributes:[{Name:"generic.attack_damage",Base:8f},{Name:"generic.knockback_resistance",Base:0.8f},{Name:"generic.armor_toughness",Base:5f},{Name:"generic.follow_range",Base:50f},{Name:"generic.movement_speed",Base:0.6f},{Name:"generic.max_health",Base:100F}],Team:LabyrinthMob,Tags:["labyrinthlibrarian"]}
execute if entity @a[tag=InLabyrinth,x=-5086,y=83,z=67,dx=24,dy=-4,dz=-36,scores={Running=0}] run effect give @e[type=skeleton,tag=labyrinthlibrarian,limit=1] slowness 1 3 true
execute if entity @a[tag=InLabyrinth,x=-5086,y=83,z=67,dx=24,dy=-4,dz=-36,scores={Running=1..},limit=1] run effect clear @e[type=skeleton,tag=labyrinthlibrarian,limit=1] slowness