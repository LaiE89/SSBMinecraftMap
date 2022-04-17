# Ability CDs
title @p[tag=Spawn,scores={Timer3=21..}] actionbar ["",{"text":"Chains/AK-47: ","color":"white"},{"score":{"name":"@p[tag=Spawn]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Heal:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Spawn]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Spawn]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Lifesteal Bolts:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Spawn]","objective":"Ability4CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Burn:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Spawn]","objective":"Ability5CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Necroplasm: ","color":"green"},{"score":{"name":"@p[tag=Spawn]","objective":"Timer3"},"color":"green"},{"text":"/100","color":"green"}]
title @p[tag=Spawn,scores={Timer3=..20}] actionbar ["",{"text":"Chains/AK-47: ","color":"white"},{"score":{"name":"@p[tag=Spawn]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Heal:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Spawn]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Spawn]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Lifesteal Bolts:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Spawn]","objective":"Ability4CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Burn:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Spawn]","objective":"Ability5CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Necroplasm: ","color":"green"},{"score":{"name":"@p[tag=Spawn]","objective":"Timer3"},"color":"red"},{"text":"/100","color":"red"}]

# AK47
scoreboard players add @p[tag=Spawn,scores={Ability1CD=..49}] Ability1CD 1
execute as @p[tag=Spawn,scores={Ability1CD=50..}] as @p[tag=Spawn,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Spawn\'s Weapons","italic":false,"color":"white"}]'}}}}] at @s run function datapack:spawn_functions/weapon1cos

scoreboard players add @p[tag=SpawnShootingAK] Timer 1

execute at @p[tag=SpawnShootingAK,scores={Timer=1}] run summon armor_stand ^ ^ ^1 {Tags:["AKBullet","projectile"],DisabledSlots:2039583,NoGravity:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
execute at @p[tag=SpawnShootingAK,scores={Timer=1}] run particle minecraft:cloud ^ ^1 ^0.5 0 0 0 0.5 10
execute at @p[tag=SpawnShootingAK,scores={Timer=1}] run playsound minecraft:entity.firework_rocket.large_blast neutral @a[distance=..20] ~ ~ ~ 3 2 1

execute at @p[tag=SpawnShootingAK,scores={Timer=4}] run summon armor_stand ^ ^ ^1 {Tags:["AKBullet","projectile"],DisabledSlots:2039583,NoGravity:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
execute at @p[tag=SpawnShootingAK,scores={Timer=4}] run particle minecraft:cloud ^ ^1 ^0.5 0 0 0 0.5 10
execute at @p[tag=SpawnShootingAK,scores={Timer=4}] run playsound minecraft:entity.firework_rocket.large_blast neutral @a[distance=..20] ~ ~ ~ 3 2 1

execute at @p[tag=SpawnShootingAK,scores={Timer=7}] run summon armor_stand ^ ^ ^1 {Tags:["AKBullet","AKFinalBullet","projectile"],DisabledSlots:2039583,NoGravity:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:dark_oak_button",Count:1b}]}
execute at @p[tag=SpawnShootingAK,scores={Timer=7}] run particle minecraft:cloud ^ ^1 ^0.5 0 0 0 0.5 10
execute at @p[tag=SpawnShootingAK,scores={Timer=7}] run playsound minecraft:entity.firework_rocket.large_blast neutral @a[distance=..20] ~ ~ ~ 3 2 1

execute as @e[type=armor_stand,tag=AKBullet,tag=!facingAKBullet] at @s run tp @s ~ ~ ~ facing entity @p[tag=Spawn]
tag @e[type=armor_stand,tag=AKBullet,tag=!facingAKBullet] add facingAKBullet
execute as @e[type=armor_stand,tag=AKBullet] at @s run tp @s ^ ^ ^-2

execute at @e[tag=AKBullet,tag=!AKFinalBullet,type=armor_stand] as @e[distance=..1.6,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] at @s run function datapack:spawn_functions/bulletdamage
execute at @e[tag=AKBullet,tag=AKFinalBullet,type=armor_stand] as @e[distance=..1.6,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] at @s run function datapack:spawn_functions/bulletfinaldamage
execute as @e[tag=AKBullet,type=armor_stand] at @s if entity @e[distance=..1.6,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] run kill @s

scoreboard players add @e[type=armor_stand,tag=AKBullet] Timer 1
kill @e[type=armor_stand,tag=AKBullet,scores={Timer=15..}]

tag @p[tag=SpawnShootingAK,scores={Timer=8..}] remove SpawnShootingAK
scoreboard players reset @p[tag=Spawn,scores={Timer=8..}] Timer

# Chains
execute as @p[gamemode=!spectator,tag=Spawn,scores={Ability1CD=50..}] as @p[tag=Spawn,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Spawn\'s Weapons","italic":false,"color":"white"}]'}}}}] at @s run function datapack:spawn_functions/weapon1shift

execute at @e[type=armor_stand,tag=SpawnChains] run particle minecraft:dust 0.5 0.5 0.5 2.5 ~ ~0.6 ~ 0 0 0 0 5

scoreboard players add @e[tag=SpawnChains,type=armor_stand] Timer 1
execute at @e[type=armor_stand,tag=SpawnChains,scores={Timer=..15}] if entity @e[limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] as @e[type=armor_stand,tag=SpawnChains,scores={Timer=..15}] at @s facing entity @e[limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] feet run tp @s ^ ^ ^0.8 facing entity @e[limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth]
execute at @e[type=armor_stand,tag=SpawnChains,scores={Timer=16..}] if entity @p[tag=Spawn] as @e[type=armor_stand,tag=SpawnChains,scores={Timer=16..}] at @s facing entity @p[tag=Spawn] feet run tp @s ^ ^ ^1 facing entity @p[tag=Spawn]

execute at @e[type=armor_stand,tag=SpawnChains] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] at @s run function datapack:spawn_functions/chainsdamage

execute as @e[tag=SpawnChains,scores={Timer=16..}] at @s if entity @p[tag=Spawn,distance=..1] run kill @s

# Necroplasm Passive
execute as @p[gamemode=!spectator,tag=Spawn,scores={Timer3=..99},nbt=!{ActiveEffects:[{Id:10b}]}] at @s if entity @e[distance=..5,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] run function datapack:spawn_functions/necroplasmregen
execute as @p[gamemode=!spectator,tag=Spawn,scores={Timer3=..99},nbt={ActiveEffects:[{Id:10b}]}] at @s if entity @e[distance=..8,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] run function datapack:spawn_functions/necroplasmregen2
effect give @p[tag=Spawn,scores={Timer3=..20}] minecraft:wither 1 9 true

# Heal
scoreboard players add @p[tag=Spawn,scores={Ability2CD=..149}] Ability2CD 1
execute as @p[tag=Spawn,scores={Ability2CD=150..}] as @p[tag=Spawn,scores={Timer3=20..}] as @p[tag=Spawn,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Necroplasmic Utility Magic","italic":false,"color":"dark_green"}]'}}}}] at @s run function datapack:spawn_functions/weapon2cos
execute at @p[tag=Spawn,nbt={ActiveEffects:[{Id:10b}]}] run particle minecraft:totem_of_undying ~ ~0.5 ~ 0.4 1 0.4 0 10

# Teleport
scoreboard players add @p[tag=Spawn,scores={Ability3CD=..149}] Ability3CD 1
execute as @p[gamemode=!spectator,tag=Spawn,scores={Ability3CD=150..}] as @p[tag=Spawn,scores={Timer3=10..}] as @p[tag=Spawn,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Necroplasmic Utility Magic","italic":false,"color":"dark_green"}]'}}}}] at @s run function datapack:spawn_functions/weapon2shift

# Lifesteal Bolts
scoreboard players add @p[tag=Spawn,scores={Ability4CD=..149}] Ability4CD 1
execute as @p[tag=Spawn,scores={Ability4CD=150..}] as @p[tag=Spawn,scores={Timer3=40..}] as @p[tag=Spawn,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Necroplasmic Offensive Magic","italic":false,"color":"dark_green"}]'}}}}] at @s run function datapack:spawn_functions/weapon3cos

scoreboard players add @p[tag=SpawnBolts] Timer2 1
execute at @p[tag=SpawnBolts,scores={Timer2=1}] run particle minecraft:dust 0 1 0 2 ^0.5 ^0.75 ^0.5 0.1 0.1 0.1 0 50
execute at @p[tag=SpawnBolts,scores={Timer2=1}] run summon armor_stand ^0.5 ^ ^ {Tags:["lifestealbolt","projectile"],DisabledSlots:2039583,NoGravity:1b,Invisible:1,Small:1b,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}]}
execute at @p[tag=SpawnBolts,scores={Timer2=1}] run playsound minecraft:entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 3 1.5 1

execute at @p[tag=SpawnBolts,scores={Timer2=19}] run particle minecraft:dust 0 1 0 2 ^-0.5 ^0.75 ^0.5 0.1 0.1 0.1 0 50
execute at @p[tag=SpawnBolts,scores={Timer2=19}] run summon armor_stand ^-0.5 ^ ^ {Tags:["lifestealbolt2","projectile"],DisabledSlots:2039583,NoGravity:1b,Small:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}]}
execute at @p[tag=SpawnBolts,scores={Timer2=19}] run playsound minecraft:entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 3 1.5 1

execute as @e[type=armor_stand,tag=lifestealbolt] at @s anchored eyes facing entity @e[limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] eyes positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^0.5 ^ ^0.5 ~ ~
execute as @e[type=armor_stand,tag=lifestealbolt2] at @s anchored eyes facing entity @e[limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] eyes positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^-0.5 ^ ^0.5 ~ ~

execute at @e[type=armor_stand,tag=lifestealbolt] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] at @s run function datapack:spawn_functions/lifestealboltsdamage
execute at @e[type=armor_stand,tag=lifestealbolt2] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Spawn,tag=!InLabyrinth] at @s run function datapack:spawn_functions/lifestealboltsdamage2

execute at @e[tag=lifestealbolt,type=armor_stand] run particle minecraft:sneeze ~ ~0.7 ~ 0.1 0.1 0.1 0 10
execute at @e[tag=lifestealbolt2,type=armor_stand] run particle minecraft:sneeze ~ ~0.7 ~ 0.1 0.1 0.1 0 10

scoreboard players add @e[type=armor_stand,tag=lifestealbolt] Timer 1
scoreboard players add @e[type=armor_stand,tag=lifestealbolt2] Timer 1
kill @e[type=armor_stand,tag=lifestealbolt,scores={Timer=100..}]
kill @e[type=armor_stand,tag=lifestealbolt2,scores={Timer=100..}]

tag @p[tag=SpawnBolts,scores={Timer2=20..}] remove SpawnBolts
scoreboard players reset @p[tag=Spawn,scores={Timer2=20..}] Timer2

# Burn
scoreboard players add @p[tag=Spawn,scores={Ability5CD=..149}] Ability5CD 1
execute as @p[gamemode=!spectator,tag=Spawn,scores={Ability5CD=150..}] as @p[tag=Spawn,scores={Timer3=50..}] as @p[tag=Spawn,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Necroplasmic Offensive Magic","italic":false,"color":"dark_green"}]'}}}}] at @s run function datapack:spawn_functions/weapon3shift

execute as @e[tag=SpawnBurning] at @s run function datapack:spawn_functions/burndamage

execute if entity @e[tag=SpawnBurning] run scoreboard players add @p[tag=Spawn] Timer4 1
execute if entity @p[tag=Spawn,scores={Timer4=60..}] run tag @e[tag=SpawnBurning] remove SpawnBurning
scoreboard players reset @p[tag=Spawn,scores={Timer4=60..}] Timer4