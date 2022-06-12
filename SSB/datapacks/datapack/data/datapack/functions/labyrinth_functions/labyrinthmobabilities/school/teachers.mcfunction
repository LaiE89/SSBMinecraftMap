scoreboard players add @e[type=zombie,tag=labyrinthschoolteacher] Timer 1

execute as @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=100}] at @s positioned ~-20 ~-1 ~-20 run tellraw @a[dx=40,dy=2,dz=40] {"text":"SLOW DOWN IN THE HALLWAYS","bold":true,"color":"red"}
execute as @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=100}] at @s positioned ~-20 ~-1 ~-20 run effect give @a[dx=40,dy=2,dz=40] minecraft:slowness 3 3 true

execute as @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=200}] at @s positioned ~-20 ~-1 ~-20 run tellraw @a[dx=40,dy=2,dz=40] {"text":"YOU FAILED YOUR TEST","bold":true,"color":"red"}
execute as @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=200}] at @s positioned ~-20 ~-1 ~-20 run effect give @a[dx=40,dy=2,dz=40] minecraft:nausea 10 0 true
execute as @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=200}] at @s positioned ~-20 ~-1 ~-20 run effect give @a[dx=40,dy=2,dz=40] minecraft:weakness 10 0 true

execute as @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=300}] at @s positioned ~-20 ~-1 ~-20 run tellraw @a[dx=40,dy=2,dz=40] {"text":"I'M CALLING YOUR PARENTS","bold":true,"color":"red"}
execute as @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=300}] at @s positioned ~-20 ~-1 ~-20 run effect give @a[dx=40,dy=2,dz=40] minecraft:instant_damage 1 1 true

execute as @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=400}] at @s positioned ~-20 ~-1 ~-20 run tellraw @a[dx=40,dy=2,dz=40] {"text":"YOU ARE GOING TO THE PRINCIPAL'S OFFICE","bold":true,"color":"red"}

execute as @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=400}] at @s positioned ~-20 ~-1 ~-20 if entity @a[dx=40,dy=2,dz=40] unless entity @e[type=skeleton,tag=labyrinthschoolbaldi] run summon minecraft:skeleton -5095 73 17 {Health:200,Attributes:[{Name:"generic.max_health",Base:200},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0.4f},{Name:"generic.attack_damage",Base:8}],Silent:1,DeathLootTable:"mctools:entities/miniboss",HandItems:[{id:"minecraft:stick",Count:1,tag:{Enchantments:[{id:knockback,lvl:10}]}},{}],HandDropChances:[0F,0F],ArmorItems:[{Count:1,id:"minecraft:leather_boots",tag:{display:{color:2952703}}},{id:"minecraft:leather_leggings",tag:{display:{color:2952703}},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:2293504}},Count:1},{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Baldi\"}"},SkullOwner:{Id:[I;11052155,1877821507,-1436064262,-782951018],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmE5OTE0MmMzZTBhNzQ0M2IxY2NlNTdkYzNjMmRhMjkwNzJhYjg3ZTczZDg3ZTBiMzJkYjQ3MWFkMTk0NzlkMiJ9fX0="}]}}},Count:1}],ArmorDropChances:[0F,0F,0F,0F],Tags:["labyrinthschoolbaldi"],Team:LabyrinthMob}
execute as @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=400}] at @s positioned ~-20 ~-1 ~-20 if entity @a[dx=40,dy=2,dz=40] run tp @e[tag=labyrinthschoolbaldi,type=skeleton] -5095 73 17
execute as @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=400}] at @s positioned ~-20 ~-1 ~-20 run tp @a[dx=40,dy=2,dz=40] -5095 73 11 facing -5095 73 14
scoreboard players reset @e[type=zombie,tag=labyrinthschoolteacher,scores={Timer=400..}] Timer
