# Ability CDs
title @p[tag=Tracer,tag=!TracerReload] actionbar ["",{"text":"Recall:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Tracer]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Pulse Bomb:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Tracer]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Blink Charges: ","color":"gold"},{"score":{"name":"@p[tag=Tracer]","objective":"Ability4CD"},"color":"gold"},{"text":" || ","color":"white"},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@p[tag=Tracer]","objective":"Ability5CD"},"color":"yellow"}]
title @p[tag=Tracer,tag=TracerReload] actionbar ["",{"text":"Recall:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Tracer]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Pulse Bomb:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Tracer]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Blink Charges: ","color":"gold"},{"score":{"name":"@p[tag=Tracer]","objective":"Ability4CD"},"color":"gold"},{"text":" || ","color":"white"},{"text":"RELOADING","color":"yellow"}]

# Pulse Pistols
execute as @p[tag=Tracer,tag=!TracerReload,tag=!TracerRecall,scores={Ability5CD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Pulse Pistols","italic":false,"color":"aqua"}]'}}}}] as @p[tag=Tracer,scores={Basic_COS=1..}] at @s run function datapack:tracer_functions/weapon1cos

tag @p[tag=Tracer,scores={Ability5CD=0}] add TracerReload
scoreboard players add @p[tag=Tracer,tag=TracerReload] Timer 1
execute as @p[tag=Tracer,scores={Timer=1}] at @s run playsound minecraft:ui.loom.select_pattern neutral @a[distance=..10] ~ ~ ~ 10 2 1
scoreboard players set @p[tag=Tracer,scores={Timer=20..}] Ability5CD 5
tag @p[tag=Tracer,scores={Timer=20..}] remove TracerReload
scoreboard players reset @p[tag=Tracer,scores={Timer=20..}] Timer

# Blink
scoreboard players add @p[tag=Tracer,scores={Ability4CD=..2}] Ability1CD 1
scoreboard players add @p[tag=Tracer,scores={Ability1CD=60..}] Ability4CD 1
scoreboard players reset @p[tag=Tracer,scores={Ability1CD=60..}] Ability1CD
execute as @p[gamemode=!spectator,tag=Tracer,tag=!TracerBlinkCD,tag=!TracerRecall,scores={Ability4CD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Pulse Pistols","italic":false,"color":"aqua"}]'}}}}] as @p[tag=Tracer,scores={Basic_Shift=1..}] at @s run function datapack:tracer_functions/weapon1shift

scoreboard players add @p[tag=Tracer,tag=TracerBlinkCD] Timer2 1
tag @p[tag=Tracer,tag=TracerBlinkCD,scores={Timer2=10..}] remove TracerBlinkCD
scoreboard players reset @p[tag=Tracer,scores={Timer2=10..}] Timer2

# Recall
scoreboard players add @p[tag=Tracer,scores={Ability2CD=..299}] Ability2CD 1
execute as @p[tag=Tracer,scores={Ability2CD=300..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Tracer\'s Technology","italic":false,"color":"aqua"}]'}}}}] as @p[tag=Tracer,scores={Basic_COS=1..}] at @s run function datapack:tracer_functions/weapon2cos

scoreboard players add @p[tag=Tracer] Timer3 1
execute as @p[tag=Tracer,scores={Ability2CD=150..}] as @s[scores={Timer3=30}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["TracerRecallLocation"],Duration:150}
scoreboard players set @p[tag=Tracer,scores={Timer3=30}] Timer6 0
execute as @e[type=minecraft:area_effect_cloud,tag=TracerRecallLocation] at @s run function datapack:tracer_functions/latestrecall
scoreboard players reset @p[tag=Tracer,scores={Timer3=30..}] Timer3

scoreboard players add @p[tag=Tracer,tag=TracerRecall] Timer4 1
execute as @p[tag=Tracer,tag=TracerRecall] at @s if entity @e[type=area_effect_cloud,tag=TracerRecallLocation,tag=!TracerLatestRecall,limit=1,sort=nearest] as @s at @s facing entity @e[type=area_effect_cloud,tag=TracerRecallLocation,tag=!TracerLatestRecall,limit=1,sort=nearest] eyes run tp @s ^ ^ ^1.5
execute as @p[tag=Tracer,tag=TracerRecall] at @s unless entity @e[type=area_effect_cloud,tag=TracerRecallLocation,tag=!TracerLatestRecall] if entity @e[type=area_effect_cloud,tag=TracerLatestRecall,limit=1,sort=nearest] as @s at @s facing entity @e[type=area_effect_cloud,tag=TracerLatestRecall,limit=1,sort=nearest] eyes run tp @s ^ ^ ^1.5
execute as @e[type=area_effect_cloud,tag=TracerRecallLocation,tag=!TracerLatestRecall] at @s if entity @p[tag=Tracer,tag=TracerRecall,distance=..2] run kill @s
execute as @p[tag=Tracer,tag=TracerRecall] at @s unless entity @e[type=area_effect_cloud,tag=TracerRecallLocation,tag=!TracerLatestRecall] if entity @e[type=area_effect_cloud,tag=TracerLatestRecall,distance=..2] run function datapack:tracer_functions/recallend

# Pulse Bomb
scoreboard players add @p[tag=Tracer,scores={Ability3CD=..499}] Ability3CD 1
execute as @p[gamemode=!spectator,tag=Tracer,tag=!TracerRecall,scores={Ability3CD=500..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Tracer\'s Technology","italic":false,"color":"aqua"}]'}}}}] as @p[tag=Tracer,scores={Basic_Shift=1..}] at @s run function datapack:tracer_functions/weapon2shift

execute at @e[type=armor_stand,tag=TracerPulseBomb] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Tracer,tag=!InLabyrinth] at @s run function datapack:tracer_functions/bombattach

execute if entity @e[tag=TracerPulseBomb] run scoreboard players add @p[tag=Tracer] Timer5 1
execute as @e[tag=TracerPulseBomb] at @s run function datapack:tracer_functions/bombexplode
scoreboard players reset @p[tag=Tracer,scores={Timer5=20..}] Timer5