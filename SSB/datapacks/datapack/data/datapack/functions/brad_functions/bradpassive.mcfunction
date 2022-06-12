# Combo Dial
title @p[tag=Brad,tag=!BradBusterPunches,tag=!BradMachineGunFist] actionbar ["",{"text":"Combo Dial: ","color":"gold","bold":"true"},{"score":{"name":"@p[tag=Brad]","objective":"Timer6"},"color":"white"},{"text":" "},{"score":{"name":"@p[tag=Brad]","objective":"Timer7"},"color":"white"},{"text":" "},{"score":{"name":"@p[tag=Brad]","objective":"Timer8"},"color":"white"}]
title @p[tag=Brad,tag=BradBusterPunches] actionbar ["",{"text":"BUSTER PUNCHES","color":"gold","bold":"true"}]
title @p[tag=Brad,tag=BradMachineGunFist] actionbar ["",{"text":"MACHINE GUN FIST","color":"gold","bold":"true"}]
execute if entity @e[type=area_effect_cloud,tag=Bradheadbuttplace] run title @p[tag=Brad] actionbar ["",{"text":"CHARGING HEADBUTT","color":"gold","bold":"true"}]
title @p[tag=Brad,tag=BradCry] actionbar ["",{"text":"CRY","color":"gold","bold":"true"}]
title @p[tag=Brad,tag=BradHorsestance] actionbar ["",{"text":"HORSE STANCE","color":"gold","bold":"true"}]
title @p[tag=Brad,tag=BradJoy] actionbar ["",{"text":"JOY","color":"gold","bold":"true"}]

# Basic Abilities
execute at @p[tag=Brad,scores={Basic_Attack=1..}] as @e[distance=..6,limit=1,sort=nearest,tag=!Brad,nbt={HurtTime:10s}] at @s run function datapack:brad_functions/punch
scoreboard players add @p[tag=Brad,tag=!BradBusterPunches,tag=!BradMachineGunFist,tag=!BradCry,tag=!BradHorsestance,tag=!BradJoy,scores={Basic_Attack=1..}] Timer6 1
scoreboard players add @p[tag=Brad,tag=!BradBusterPunches,tag=!BradMachineGunFist,tag=!BradCry,tag=!BradHorsestance,tag=!BradJoy,scores={Basic_Attack=1..}] Timer9 1

scoreboard players add @p[tag=Brad,scores={Ability1CD=..29}] Ability1CD 1
execute as @p[tag=Brad,scores={Basic_COS=1..}] as @p[tag=Brad,scores={Ability1CD=30..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Sweaty Wristbands","italic":false,"color":"gold"}]'}}}}] at @s run function datapack:brad_functions/weapon1cos

scoreboard players add @p[tag=Brad,scores={Ability2CD=..29}] Ability2CD 1
execute as @p[gamemode=!spectator,tag=Brad,scores={Basic_Shift=1..}] as @p[tag=Brad,scores={Ability2CD=30..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Sweaty Wristbands","italic":false,"color":"gold"}]'}}}}] at @s run function datapack:brad_functions/weapon1shift


# Brad Move 1: 1 on every move - Buster Punches
execute as @p[tag=Brad,scores={Timer6=1}] as @p[tag=Brad,scores={Timer7=1}] as @p[tag=Brad,scores={Timer8=1}] at @s run tag @s add BradBusterPunches

scoreboard players add @p[tag=BradBusterPunches] Timer 1
effect give @p[tag=BradBusterPunches] minecraft:strength 1 1 true
execute at @p[tag=BradBusterPunches,scores={Basic_Attack=1..}] as @e[distance=..6,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Brad,tag=!InLabyrinth,nbt={HurtTime:10s}] at @s run function datapack:brad_functions/busterpunches
tag @p[tag=BradBusterPunches,scores={Timer=60..}] remove BradBusterPunches
scoreboard players reset @p[tag=Brad,scores={Timer=60..}] Timer


# Brad Move 2: 3 on punch - Machine Gun Fist
execute as @p[tag=Brad,scores={Timer6=3}] at @s run tag @s add BradMachineGunFist

scoreboard players add @p[gamemode=!spectator,tag=BradMachineGunFist] Timer2 1
execute as @p[gamemode=!spectator,tag=BradMachineGunFist] at @s run function datapack:brad_functions/machinegunfist
tag @p[tag=BradMachineGunFist,scores={Timer2=40..}] remove BradMachineGunFist
scoreboard players reset @p[tag=Brad,scores={Timer2=40..}] Timer2


# Brad Move 3: 1 on zipper + 2 on push - Fireball
execute as @p[tag=Brad,scores={Timer8=2}] as @p[tag=Brad,scores={Timer7=1}] at @s run summon armor_stand ^ ^ ^1 {Tags:["BradsFireball","projectile"],DisabledSlots:2039583,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:orange_concrete_powder",Damage:3,Count:1b}]}

execute as @e[type=armor_stand,tag=BradsFireball,tag=!castedBradsFireball] at @s run tp @s ~ ~ ~ facing entity @p[tag=Brad]
tag @e[type=armor_stand,tag=BradsFireball,tag=!castedBradsFireball] add castedBradsFireball
execute as @e[type=armor_stand,tag=BradsFireball] at @s run tp @s ^ ^ ^-0.8
execute as @e[type=armor_stand,tag=BradsFireball] at @s run particle minecraft:dust 1 0.5 0 1 ~ ~1.3 ~ 0.4 0.4 0.4 0.05 30
execute at @e[type=armor_stand,tag=BradsFireball] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Brad,tag=!InLabyrinth] at @s run function datapack:brad_functions/fireball
scoreboard players add @e[type=armor_stand,tag=BradsFireball] Timer 1
kill @e[type=armor_stand,tag=BradsFireball,scores={Timer=40..}]


# Brad Move 4: 1 on Push + 2 on Zipper - Headbutt
execute as @p[tag=Brad,scores={Timer8=1}] as @p[tag=Brad,scores={Timer7=2}] at @s run function datapack:brad_functions/headbutt

execute as @p[tag=Brad] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=Bradheadbuttplace,limit=1,sort=nearest] eyes run tp @s ^ ^0.1 ^0.8
execute if entity @e[type=minecraft:area_effect_cloud,tag=Bradheadbuttplace] at @p[tag=Brad] run particle minecraft:poof ~ ~1 ~ 0.4 0.4 0.4 0 1
execute if entity @e[type=minecraft:area_effect_cloud,tag=Bradheadbuttplace] at @p[tag=Brad] as @e[distance=..3,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Brad,tag=!InLabyrinth] at @s run function datapack:brad_functions/headbuttdamage

execute as @p[tag=Brad] at @s if entity @e[type=minecraft:area_effect_cloud,tag=Bradheadbuttplace,distance=..2] run function datapack:brad_functions/headbuttend


# Brad Move 5: 1 on Punch + 2 on Zipper - Cry
execute as @p[tag=Brad,scores={Timer6=1}] as @p[tag=Brad,scores={Timer7=2}] at @s run tag @s add BradCry

scoreboard players add @p[tag=BradCry] Timer3 1
execute at @p[tag=BradCry] run particle minecraft:falling_water ^-0.2 ^1.6 ^0.4 0 0 0 0 1
execute at @p[tag=BradCry] run particle minecraft:falling_water ^0.2 ^1.6 ^0.4 0 0 0 0 1
effect clear @p[tag=BradCry,scores={Timer3=1}]
effect give @p[tag=BradCry,scores={Timer3=1}] minecraft:fire_resistance 3 9 true
effect give @p[tag=BradCry,scores={Timer3=1}] minecraft:speed 3 2 true
effect give @p[tag=BradCry,scores={Timer3=1}] minecraft:regeneration 3 1 true
effect give @p[tag=BradCry,scores={Timer3=1}] minecraft:night_vision 3 0 true
effect give @p[tag=BradCry,scores={Timer3=1}] minecraft:saturation 3 9 true
effect give @p[tag=BradCry,scores={Timer3=1}] minecraft:water_breathing 3 9 true
tag @p[tag=BradCry,scores={Timer3=70..}] remove BradCry
scoreboard players reset @e[tag=Brad,scores={Timer3=70..}] Timer3


# Brad Move 6: 1 on Punch + 2 on Push - Scream
execute as @p[tag=Brad,scores={Timer6=1}] as @p[tag=Brad,scores={Timer8=2}] at @s run playsound minecraft:entity.witch.death neutral @a[distance=..40] ~ ~ ~ 10 0 1
execute as @p[tag=Brad,scores={Timer6=1}] as @p[tag=Brad,scores={Timer8=2}] at @s as @e[distance=..40,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Brad,tag=!InLabyrinth] at @s run function datapack:brad_functions/scream


# Brad Move 7: 2 on Punch + 1 on Zipper - Surprise Attack
execute as @p[tag=Brad,scores={Timer6=2}] as @p[tag=Brad,scores={Timer7=1}] at @s as @e[distance=..8,sort=nearest,limit=1,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Brad,tag=!InLabyrinth] at @s run function datapack:brad_functions/surpriseattack


# Brad Move 8: 2 on Punch + 1 on Push - Horse Stance
execute as @p[tag=Brad,scores={Timer6=2}] as @p[tag=Brad,scores={Timer8=1}] at @s run tag @s add BradHorsestance

scoreboard players add @p[tag=BradHorsestance] Timer4 1
execute at @p[tag=BradHorsestance] run particle minecraft:cloud ~ ~ ~ 0 1 0 0.2 10
effect give @p[tag=BradHorsestance,scores={Timer4=1}] minecraft:resistance 3 1 true
effect give @p[tag=BradHorsestance,scores={Timer4=1}] minecraft:slowness 3 2 true
effect give @p[tag=BradHorsestance,scores={Timer4=1}] minecraft:absorption 3 2 true
effect clear @p[tag=BradHorsestance,scores={Timer4=60..}]
tag @p[tag=BradHorsestance,scores={Timer4=60..}] remove BradHorsestance
scoreboard players reset @e[tag=Brad,scores={Timer4=60..}] Timer4


# Brad Move 9: 3 on Zipper - Diesel F Bomb
execute as @p[tag=Brad,scores={Timer7=3..}] at @s run function datapack:brad_functions/fbomb

scoreboard players add @e[type=armor_stand,tag=BradFBomb] Timer 1
execute as @e[type=armor_stand,tag=BradFBomb,scores={Timer=15..}] at @s run function datapack:brad_functions/fbombexplode

scoreboard players add @e[type=armor_stand,tag=BradFBombFire] Timer 1
execute as @e[tag=BradFBombFire,type=armor_stand] at @s run function datapack:brad_functions/fbombfield
kill @e[tag=BradFBombFire,scores={Timer=60..}]


# Brad Move 10: 3 on push - Joy
execute as @p[tag=Brad,scores={Timer8=3..}] at @s run tag @s add BradJoy
execute as @p[tag=Brad,scores={Timer8=3..}] at @s run playsound minecraft:entity.mooshroom.convert neutral @a[distance=..40] ~ ~ ~ 3 0.5 1

scoreboard players add @p[tag=BradJoy] Timer5 1
execute at @p[tag=BradJoy] run particle minecraft:dust 0 1 1 1 ~ ~0.5 ~ 0.4 1 0.4 0 50
effect give @p[tag=BradJoy,scores={Timer5=1}] minecraft:instant_health
effect give @p[tag=BradJoy,scores={Timer5=1}] minecraft:speed 3 4 true
effect give @p[tag=BradJoy,scores={Timer5=1}] minecraft:nausea 10 0 true
execute at @p[tag=BradJoy,scores={Basic_Attack=1..}] run effect give @e[distance=..8,limit=1,sort=nearest,nbt={HurtTime:10s},tag=!Brad] minecraft:poison 2 9 true
tag @p[tag=BradJoy,scores={Timer5=60..}] remove BradJoy
scoreboard players reset @e[tag=Brad,scores={Timer5=60..}] Timer5

scoreboard players set @p[tag=Brad,scores={Timer9=3..}] Timer8 0
scoreboard players set @p[tag=Brad,scores={Timer9=3..}] Timer7 0
scoreboard players set @p[tag=Brad,scores={Timer9=3..}] Timer6 0
scoreboard players set @p[tag=Brad,scores={Timer9=3..}] Timer9 0
