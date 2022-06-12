# Ability CDs
title @p[tag=Ness] actionbar ["",{"text":"Yoyos:","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Ness]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"PK Fire:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Ness]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"PK Thunder:","color":"aqua"},{"text":" ","color":"gold"},{"score":{"name":"@p[tag=Ness]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"PSI Lifeup:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Ness]","objective":"Ability5CD"},"color":"white"},{"text":" || "},{"text":"PSI Flash:","color":"dark_green"},{"text":" "},{"score":{"name":"@p[tag=Ness]","objective":"Ability4CD"}}]

# Yoyo
scoreboard players add @p[tag=Ness,scores={Ability1CD=..99}] Ability1CD 1
execute as @p[gamemode=!spectator,tag=Ness,tag=!NessInThunder,scores={Basic_Shift=1..},tag=!NessPKFlash] as @p[tag=Ness,scores={Ability1CD=100..},nbt={SelectedItem:{id:"minecraft:stick",tag:{display:{Name:'[{"text":"Baseball Bat","italic":false,"color":"gold"}]'}}}}] at @s run function datapack:ness_functions/weapon1shift

execute as @e[type=armor_stand,tag=NessYoyo,tag=!facingNess,scores={Timer=..40}] at @s run tp @s ~ ~ ~ facing entity @p[tag=Ness]
tag @e[type=armor_stand,tag=NessYoyo,tag=!facingNess,scores={Timer=..20}] add facingNess
execute as @e[type=armor_stand,tag=NessYoyo,scores={Timer=..20}] at @s run tp @s ^ ^ ^-1.5
execute as @e[type=armor_stand,tag=NessYoyo] at @s run particle minecraft:crit ~ ~1.3 ~ 0 0 0 0 1
execute at @e[type=armor_stand,tag=NessYoyo,scores={Timer=..20}] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ness,tag=!InLabyrinth] at @s run function datapack:ness_functions/yoyodamage
execute as @e[type=armor_stand,tag=NessYoyo,scores={Timer=21}] at @s if entity @e[distance=..2,tag=NessYoyoKB] run function datapack:ness_functions/yoyokb

execute at @p[tag=Ness] as @e[type=minecraft:armor_stand,tag=NessYoyo,scores={Timer=21..}] at @s facing entity @p[tag=Ness] feet run teleport @s ^ ^0.1 ^1.5
execute as @e[type=minecraft:armor_stand,tag=NessYoyo,scores={Timer=22..}] at @s run tp @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!item,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ness,tag=!InLabyrinth] @s
execute as @p[tag=Ness] at @s if entity @e[tag=NessYoyo,scores={Timer=21..},distance=..1.5] run function datapack:ness_functions/yoyoretrieve

scoreboard players add @e[type=armor_stand,tag=NessYoyo] Timer 1
kill @e[type=armor_stand,tag=NessYoyo,scores={Timer=50..}]

# PK Fire
scoreboard players add @p[tag=Ness,scores={Ability2CD=..99}] Ability2CD 1
execute as @p[tag=Ness,scores={Basic_COS=1..},tag=!NessInThunder,tag=!NessPKFlash] as @p[tag=Ness,scores={Ability2CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Psychokinesis","italic":false,"color":"dark_aqua"}]'}}}}] at @s run function datapack:ness_functions/weapon2cos

execute as @e[type=armor_stand,tag=pkfire,tag=!facingpkfire] at @s run tp @s ~ ~ ~ facing entity @p[tag=Ness]
tag @e[type=armor_stand,tag=pkfire,tag=!facingpkfire] add facingpkfire
execute as @e[type=armor_stand,tag=pkfire] at @s run tp @s ^ ^ ^-2

execute as @e[type=armor_stand,tag=pkfire] at @s if entity @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ness,tag=!InLabyrinth] run function datapack:ness_functions/pkfiredamage
scoreboard players add @e[type=armor_stand,tag=pkfire] Timer 1
kill @e[type=armor_stand,tag=pkfire,scores={Timer=10..}]

execute at @e[type=area_effect_cloud,tag=pkfired] run function datapack:ness_functions/pkfire


# PK Thunder
scoreboard players add @p[tag=Ness,scores={Ability3CD=..199}] Ability3CD 1
execute as @p[gamemode=!spectator,tag=Ness,scores={Basic_Shift=1..},tag=!NessInThunder,tag=!NessPKFlash] as @p[tag=Ness,scores={Ability3CD=200..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Psychokinesis","italic":false,"color":"dark_aqua"}]'}}}}] at @s run function datapack:ness_functions/weapon2shift

execute at @p[tag=NessInThunder] run particle minecraft:dust 0 1 1 1 ~ ~1.5 ~ 0.2 0.2 0.2 0 10

execute at @p[tag=NessInThunder] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ness,tag=!InLabyrinth] at @s run function datapack:ness_functions/pkthunderdamage

execute as @p[tag=NessInThunder,scores={Timer=20..}] at @s if entity @e[type=armor_stand,tag=pkthunderness,distance=..2] run function datapack:ness_functions/pkrocket
execute at @p[tag=Ness,scores={Timer=20..}] if entity @e[type=armor_stand,tag=pkthunderness,distance=..2] run kill @e[type=armor_stand,tag=pkthunderness]
execute as @p[tag=NessPKRocket] at @s unless entity @e[tag=pkthunderness] run scoreboard players reset @s Timer
execute as @p[tag=NessPKRocket] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=pkrocketplace,limit=1,sort=nearest] eyes run tp @s ^ ^ ^1.5
execute at @p[tag=NessPKRocket] as @e[distance=..3,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ness,tag=!InLabyrinth] at @s run function datapack:ness_functions/pkrocketdamage
execute at @p[tag=NessPKRocket] run particle minecraft:dust 0 1 1 2 ~ ~1 ~ 0.5 1 0.5 0 10
execute at @p[tag=NessPKRocket] run particle minecraft:poof ~ ~1 ~ 0.4 0.4 0.4 0 10

execute as @p[tag=NessPKRocket] at @s if entity @e[type=minecraft:area_effect_cloud,tag=pkrocketplace,distance=..3] run function datapack:ness_functions/pkrocketend
execute at @p[tag=Ness] if entity @e[type=minecraft:area_effect_cloud,tag=pkrocketplace,distance=..3] run kill @e[type=area_effect_cloud,tag=pkrocketplace]

scoreboard players add @p[tag=NessInThunder] Timer 1
execute as @p[tag=NessInThunder,scores={Timer=100..}] at @s run function datapack:ness_functions/pkthunderend
scoreboard players reset @p[tag=Ness,scores={Timer=100..}] Timer

execute as @p[tag=NessInThunder] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:light_blue_glazed_terracotta"}]}] run function datapack:ness_functions/inpkthunder

# PSI Flash
scoreboard players add @p[tag=Ness,scores={Ability4CD=..199}] Ability4CD 1
execute as @p[gamemode=!spectator,tag=Ness,scores={Basic_Shift=1..},tag=!NessInThunder,tag=!NessPKFlash] as @p[tag=Ness,scores={Ability4CD=200..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Psionics","italic":false,"color":"dark_green"}]'}}}}] at @s run function datapack:ness_functions/weapon3shift

execute at @e[type=armor_stand,tag=PKFlashBomb] run particle minecraft:sneeze ~ ~1.6 ~ 0.3 0.3 0.3 0 2

scoreboard players add @p[tag=Ness,scores={Ability4CD=200}] Timer2 1
scoreboard players set @p[tag=Ness,scores={Timer2=15..}] Timer2 1

scoreboard players set @p[tag=Ness,scores={Basic_Shift=1..}] Basic_ShiftOff 0
scoreboard players add @p[tag=Ness,scores={Basic_Shift=0}] Basic_ShiftOff 1
scoreboard players reset @p[tag=Ness,scores={Basic_ShiftOff=2..}] Shift

effect give @p[tag=NessPKFlash] minecraft:slowness 2 9 true
effect give @p[tag=NessPKFlash] minecraft:weakness 2 9 true
execute at @p[tag=NessPKFlash] run particle minecraft:cloud ~ ~0.5 ~ 0.4 1 0.4 0 2

execute at @e[type=armor_stand,tag=PKFlashBomb] if entity @e[type=minecraft:armor_stand,tag=PKFlashPlace,limit=1,sort=nearest] as @e[type=armor_stand,tag=PKFlashBomb] at @s facing entity @e[type=minecraft:armor_stand,tag=PKFlashPlace,limit=1,sort=nearest] eyes run tp @s ^ ^0.1 ^0.5
execute as @e[type=armor_stand,tag=PKFlashBomb] at @s if entity @e[type=minecraft:armor_stand,tag=PKFlashPlace,distance=..2] run function datapack:ness_functions/psiflashend
execute unless entity @e[type=armor_stand,tag=PKFlashBomb] run kill @e[type=armor_stand,tag=PKFlashPlace]

execute if entity @p[tag=NessPKFlash,scores={Basic_ShiftOff=2..}] as @e[type=armor_stand,tag=PKFlashBomb] at @s run function datapack:ness_functions/psiflashexplode
execute if entity @p[tag=NessPKFlash,scores={Basic_ShiftOff=2..}] run kill @e[type=armor_stand,tag=PKFlashBomb]
execute if entity @p[tag=NessPKFlash,scores={Basic_ShiftOff=2..}] run kill @e[type=armor_stand,tag=PKFlashPlace]
effect clear @p[tag=NessPKFlash,scores={Basic_ShiftOff=2..}] minecraft:slowness
effect clear @p[tag=NessPKFlash,scores={Basic_ShiftOff=2..}] minecraft:weakness
tag @p[tag=NessPKFlash,scores={Basic_ShiftOff=2..}] remove NessPKFlash

execute if entity @e[tag=NessCrying] run scoreboard players add @p[tag=Ness] Timer3 1
execute at @e[tag=NessCrying] run particle minecraft:falling_water ^-0.2 ^1.6 ^0.4 0 0 0 0 1
execute at @e[tag=NessCrying] run particle minecraft:falling_water ^0.2 ^1.6 ^0.4 0 0 0 0 1
effect give @e[tag=NessCrying] minecraft:mining_fatigue 1 4 true
execute if entity @p[tag=Ness,scores={Timer3=100..}] run tag @e[tag=NessCrying] remove NessCrying
scoreboard players reset @p[tag=Ness,scores={Timer3=100..}] Timer3

scoreboard players reset @p[tag=Ness,scores={Basic_ShiftOff=2..}] Basic_ShiftOff

# PSI Lifeup
scoreboard players add @p[tag=Ness,scores={Ability5CD=..199}] Ability5CD 1
execute as @p[tag=Ness,scores={Basic_COS=1..},tag=!NessInThunder,tag=!NessPKFlash] as @p[tag=Ness,scores={Ability5CD=200..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Psionics","italic":false,"color":"dark_green"}]'}}}}] at @s run function datapack:ness_functions/weapon3cos