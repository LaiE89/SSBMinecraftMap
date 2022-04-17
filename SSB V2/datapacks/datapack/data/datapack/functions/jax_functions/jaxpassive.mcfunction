# Ability CDs
title @p[tag=Jax] actionbar ["",{"text":"Leap Strike:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Jax]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Empower:","color":"yellow"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Jax]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Counter Strike:","color":"light_purple"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Jax]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Grandmaster's Might:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Jax]","objective":"Ability4CD"},"color":"white"}]

# Counterstrike
scoreboard players add @p[tag=Jax,scores={Ability3CD=..199}] Ability3CD 1
execute as @p[tag=Jax,scores={Ability3CD=200..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Absolute Unit","italic":false,"color":"dark_purple"}]'}}}}] as @p[tag=Jax,scores={COS=1..}] at @s run function datapack:jax_functions/weapon2cos

execute as @p[tag=Jax,tag=JaxCounterstrike] at @s run effect give @e[distance=..6,tag=!Jax] minecraft:weakness 1 9 true

execute at @p[tag=JaxCounterstrike] run particle minecraft:dust 1 1 1 1 ~ ~2.5 ~ 0.6 0 0.6 0 70
execute at @p[tag=JaxCounterstrike] run particle minecraft:flame ~ ~2.5 ~ 0.7 0 0.7 0 3

scoreboard players add @p[tag=JaxCounterstrike] Timer 1

execute at @p[tag=JaxCounterstrike,scores={Timer=40..}] as @e[distance=..8,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Jax,tag=!InLabyrinth] at @s run function datapack:jax_functions/counterstrikedamage
execute as @p[tag=JaxCounterstrike,scores={Timer=40..}] at @s run function datapack:jax_functions/counterstrike

scoreboard players reset @p[scores={Timer=40..},tag=Jax] Timer

# Grandmaster's Might
scoreboard players add @p[tag=Jax,scores={Ability4CD=..399}] Ability4CD 1
execute as @p[tag=Jax,scores={Ability4CD=400..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Absolute Unit","italic":false,"color":"dark_purple"}]'}}}}] as @p[gamemode=!spectator,tag=Jax,scores={Shift=1..}] at @s run function datapack:jax_functions/weapon2shift

# Leapstrike
scoreboard players add @p[tag=Jax,scores={Ability2CD=..99}] Ability2CD 1
execute as @p[tag=Jax,scores={Ability2CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Lamp","italic":false,"color":"gold"}]'}}}}] as @p[tag=Jax,gamemode=!spectator,scores={Shift=1..}] at @s run function datapack:jax_functions/weapon1shift

execute at @p[tag=Jax] run execute if entity @e[tag=JaxLeapstrikeTo] as @p[tag=Jax] at @s facing entity @e[tag=JaxLeapstrikeTo] eyes run tp @p[tag=Jax] ^ ^1 ^1.25
execute as @e[tag=JaxLeapstrikeTo] at @s if entity @p[tag=Jax,distance=..3] run execute at @s run function datapack:jax_functions/leapstrikedamage

# Empower
scoreboard players add @p[tag=Jax,scores={Ability1CD=..39}] Ability1CD 1
execute as @p[tag=Jax,scores={Ability1CD=40..},tag=!JaxEmpowered] as @p[tag=Jax,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Lamp","italic":false,"color":"gold"}]'}}}}] at @s run function datapack:jax_functions/weapon1cos

scoreboard players add @p[tag=Jax,scores={Attack=1..}] Timer3 1

execute at @p[tag=Jax,tag=JaxEmpowered] run particle minecraft:flame ^-0.4 ^1 ^1 0.1 0.1 0.1 0 5
execute at @p[tag=Jax,scores={Timer3=3..},tag=JaxEmpowered] as @e[limit=1,sort=nearest,nbt={HurtTime:10s},type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Jax,tag=!InLabyrinth] at @s run function datapack:damage2

execute at @p[tag=Jax,scores={Attack=1..},tag=JaxEmpowered] as @e[limit=1,sort=nearest,nbt={HurtTime:10s},type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Jax,tag=!InLabyrinth] at @s run function datapack:jax_functions/empowereddamage

scoreboard players add @p[tag=JaxEmpowered] Timer2 1
scoreboard players set @p[tag=JaxEmpowered,scores={Timer2=60..}] Ability1CD 0
tag @p[tag=JaxEmpowered,scores={Timer2=60..}] remove JaxEmpowered
scoreboard players reset @p[tag=Jax,scores={Timer2=60..}] Timer2

# Passive
execute at @p[tag=Jax,scores={Timer3=3..}] as @e[limit=1,sort=nearest,nbt={HurtTime:10s},type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Jax,tag=!InLabyrinth] at @s run function datapack:jax_functions/3hitpassive
scoreboard players reset @p[tag=Jax,scores={Timer3=3..}] Timer3

