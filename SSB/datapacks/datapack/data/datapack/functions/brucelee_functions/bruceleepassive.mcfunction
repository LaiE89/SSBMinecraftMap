# Ability CDs
title @p[tag=Brucelee] actionbar ["",{"text":"WATA:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Brucelee]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Persistence:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Brucelee]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Intimidation:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Brucelee]","objective":"Ability4CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Dragon Kick:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Brucelee]","objective":"Ability5CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Marker:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Brucelee]","objective":"Ability3CD"},"color":"white"}]

# WATA
scoreboard players add @p[tag=Brucelee,scores={Ability1CD=..99}] Ability1CD 1
execute as @p[tag=Brucelee,scores={Ability1CD=100},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Nunchucks","italic":false,"color":"yellow"}]'}}}}] as @p[tag=Brucelee,scores={Basic_COS=1..}] at @s run function datapack:brucelee_functions/weapon1cos

execute as @e[type=armor_stand,tag=WATA,tag=!facingWATA] at @s run tp @s ~ ~ ~ facing entity @p[tag=Brucelee]
tag @e[type=armor_stand,tag=WATA,tag=!facingWATA] add facingWATA
execute as @e[type=armor_stand,tag=WATA] at @s run tp @s ^ ^ ^-2
execute as @e[type=armor_stand,tag=WATA] at @s run particle minecraft:dripping_water ~ ~1 ~ 0 0 0 0 1
execute at @e[type=armor_stand,tag=WATA] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Brucelee,tag=!InLabyrinth] at @s run function datapack:brucelee_functions/watadamage
scoreboard players add @e[type=armor_stand,tag=WATA] Timer 1
kill @e[type=armor_stand,tag=WATA,scores={Timer=30..}]

execute if entity @e[tag=BruceMarked] run scoreboard players add @p[tag=Brucelee] Timer2 1
execute if entity @p[tag=Brucelee,scores={Timer2=60..}] run tag @e[tag=BruceMarked] remove BruceMarked
tag @p[tag=Brucelee,scores={Timer2=60..}] remove BruceFlyingKick
scoreboard players reset @p[tag=Brucelee,scores={Timer2=60..}] Timer2
execute at @e[tag=BruceMarked] run particle minecraft:dust 0 1 1 1 ~ ~ ~ 0.4 1 0.4 0 10
execute if entity @e[tag=BruceMarked] as @p[gamemode=!spectator,tag=Brucelee,scores={Ability1CD=10..}] as @p[tag=Brucelee,scores={Basic_COS=1..},tag=!BruceFlyingKick,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Nunchucks","italic":false,"color":"yellow"}]'}}}}] at @s run function datapack:brucelee_functions/flyingkick
execute at @p[tag=BruceFlyingKick] run execute if entity @e[tag=BruceMarked,limit=1,sort=nearest] as @p[tag=BruceFlyingKick] at @s facing entity @e[tag=BruceMarked,limit=1,sort=nearest] eyes run tp @s ^ ^ ^2.5
execute as @e[tag=BruceMarked] at @s if entity @p[tag=BruceFlyingKick,distance=..3] run function datapack:brucelee_functions/flyingkickdamage

# Persistence
scoreboard players add @p[tag=Brucelee,scores={Ability2CD=..149}] Ability2CD 1
execute as @p[tag=Brucelee,scores={Ability2CD=150..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Lee\'s Persistence","italic":false,"color":"dark_green"}]'}}}}] as @p[tag=Brucelee,scores={Basic_COS=1..}] at @s run function datapack:brucelee_functions/weapon2cos
effect give @p[tag=BruceIronWill,scores={Basic_Attack=1..}] minecraft:regeneration 1 3 true
execute at @p[tag=BruceIronWill] run particle minecraft:totem_of_undying ~ ~1 ~ 0.4 1 0.4 0 2
scoreboard players add @p[tag=BruceIronWill] Timer 1
tag @p[tag=BruceIronWill,scores={Timer=60..}] remove BruceIronWill
scoreboard players reset @p[tag=Brucelee,scores={Timer=60..}] Timer

# Punching Bag
scoreboard players add @p[tag=Brucelee,scores={Ability3CD=..299}] Ability3CD 1
execute as @p[gamemode=!spectator,tag=Brucelee,scores={Ability3CD=300..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Lee\'s Persistence","italic":false,"color":"dark_green"}]'}}}}] as @p[tag=Brucelee,scores={Basic_Shift=1..}] at @s run function datapack:brucelee_functions/weapon2shift
execute at @e[type=area_effect_cloud,tag=BruceMarker] run particle minecraft:falling_dust minecraft:diamond_block ~ ~ ~ 0 0 0 0 1 

# Intimidation
scoreboard players add @p[tag=Brucelee,scores={Ability4CD=..99}] Ability4CD 1
execute as @p[gamemode=!spectator,tag=Brucelee,scores={Ability4CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Nunchucks","italic":false,"color":"yellow"}]'}}}}] as @p[tag=Brucelee,scores={Basic_Shift=1..}] at @s run function datapack:brucelee_functions/weapon1shift

# Dragon Kick
scoreboard players add @p[tag=Brucelee,scores={Ability5CD=..299}] Ability5CD 1
execute as @p[tag=Brucelee,scores={Ability5CD=300..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Dragon Kick","italic":false,"color":"dark_red"}]'}}}}] as @p[tag=Brucelee,scores={Basic_COS=1..}] at @s as @e[distance=..6,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Brucelee,tag=!InLabyrinth] at @s run function datapack:brucelee_functions/weapon3cos

execute as @e[tag=BruceDragonKicked] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=BruceleeKick,limit=1,sort=nearest] feet run tp @s ^ ^ ^1.5
execute at @e[tag=BruceDragonKicked] run particle minecraft:flame ~ ~ ~ 0.4 1 0.4 0 10
execute at @e[tag=BruceDragonKicked] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Brucelee,tag=!BruceDragonKicked,tag=!InLabyrinth] at @s run function datapack:brucelee_functions/dragonkickdamage
execute as @e[tag=BruceDragonKicked] at @s if entity @e[type=minecraft:area_effect_cloud,tag=BruceleeKick,distance=..2] run function datapack:brucelee_functions/dragonkickend