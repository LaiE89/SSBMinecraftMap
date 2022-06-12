# Ability CDs
title @p[tag=Genji] actionbar ["",{"text":"Shurikens:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Genji]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Swift Strike:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Genji]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Deflect:","color":"dark_gray"},{"text":" ","color":"gold"},{"score":{"name":"@p[tag=Genji]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Dragonblade:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Genji]","objective":"Ability4CD"},"color":"white"}]

# Passive Abilities
effect give @p[tag=Genji] minecraft:jump_boost 1 0 true

scoreboard players set @p[tag=Genji,scores={Basic_Kills=1..}] Ability2CD 98

effect give @p[tag=Genji,tag=GenjiDoubleJumping] minecraft:levitation 10 34 true

# Shurikens
scoreboard players add @p[tag=Genji,scores={Ability1CD=..49}] Ability1CD 1
execute as @p[tag=Genji,scores={Basic_COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Genji\'s Shurikens","italic":false}]'}}}}] as @p[tag=Genji,scores={Ability1CD=50..}] at @s run function datapack:genji_functions/weapon1cos

execute as @e[type=armor_stand,tag=GenjiShurikens,tag=!facingGenjiShurikens] at @s run tp @s ~ ~ ~ facing entity @p[tag=Genji]
tag @e[type=armor_stand,tag=GenjiShurikens,tag=!facingGenjiShurikens] add facingGenjiShurikens
execute as @e[type=armor_stand,tag=GenjiShurikens] at @s run tp @s ^ ^ ^-1
execute as @e[type=armor_stand,tag=GenjiShurikens] at @s as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Genji,tag=!InLabyrinth] at @s run function datapack:genji_functions/shurikendamage
execute as @e[type=armor_stand,tag=GenjiShurikens] at @s if entity @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Genji,tag=!InLabyrinth] run kill @s
scoreboard players add @e[type=armor_stand,tag=GenjiShurikens] Timer 1
kill @e[type=armor_stand,tag=GenjiShurikens,scores={Timer=20..}]

# Swift Strike
scoreboard players add @p[tag=Genji,scores={Ability2CD=..99}] Ability2CD 1
execute as @p[tag=Genji,scores={Basic_COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Genji\'s Skills","italic":false}]'}}}}] as @p[tag=Genji,scores={Ability2CD=100..}] at @s run function datapack:genji_functions/weapon2cos
execute if entity @e[type=minecraft:area_effect_cloud,tag=GenjiStrike] at @p[tag=Genji] as @e[distance=..3,tag=!Genji,tag=!InLabyrinth] at @s run function datapack:damage1
execute if entity @e[type=minecraft:area_effect_cloud,tag=GenjiStrike] at @p[tag=Genji] run particle minecraft:dust 0.01 1 0 1 ~ ~1 ~ 0.4 0.4 0.4 0 100
execute as @p[tag=Genji] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=GenjiStrike,limit=1,sort=nearest] eyes run tp @s ^ ^ ^2.5
execute as @p[tag=Genji] at @s if entity @e[type=minecraft:area_effect_cloud,tag=GenjiStrike,distance=..3] run function datapack:genji_functions/swiftstrikeend

# Deflect
scoreboard players add @p[tag=Genji,scores={Ability3CD=..149}] Ability3CD 1
execute as @p[gamemode=!spectator,tag=Genji,scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Genji\'s Skills","italic":false}]'}}}}] as @p[tag=Genji,scores={Ability3CD=150..}] at @s run function datapack:genji_functions/weapon2shift

execute at @p[tag=GenjiDeflect] run function datapack:genji_functions/deflectparticles

execute as @p[tag=Genji,tag=GenjiDeflect] at @s if entity @e[tag=projectile,tag=!GenjiShurikens,distance=..5] run function datapack:genji_functions/deflecting
execute as @e[tag=GenjiDeflectProjectile,tag=!facingGenjiDeflectProjectile] at @s run tp @s ~ ~ ~ facing entity @p[tag=Genji]
tag @e[tag=GenjiDeflectProjectile,tag=!facingGenjiDeflectProjectile] add facingGenjiDeflectProjectile
execute at @e[tag=GenjiDeflectProjectile] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Genji,tag=!InLabyrinth] at @s run function datapack:genji_functions/deflectdamage
execute as @e[tag=GenjiDeflectProjectile] at @s if entity @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Genji,tag=!InLabyrinth] run kill @s

execute as @p[tag=Genji,tag=GenjiDeflect] at @s if entity @e[type=#minecraft:arrows,tag=!GenjiDeflectArrow,distance=..5] run function datapack:genji_functions/deflectingarrows

execute as @p[tag=Genji] at @s run tp @e[type=#minecraft:arrows,tag=!GenjiDeflectedArrow,tag=GenjiDeflectArrow] @s
execute as @p[tag=Genji] at @s run tp @e[type=#minecraft:arrows,tag=!GenjiDeflectedArrow,tag=GenjiDeflectArrow] ~ ~1.5 ~
execute as @e[type=#minecraft:arrows,tag=launch,tag=GenjiDeflectArrow,tag=!GenjiDeflectedArrow] at @s run function datapack:genji_functions/deflectedarrow

scoreboard players add @p[tag=GenjiDeflect] Timer2 1
tag @p[tag=GenjiDeflect,scores={Timer2=40..}] remove GenjiDeflect
scoreboard players reset @p[tag=Genji,scores={Timer2=40..}] Timer2

# Dragonblade
scoreboard players add @p[tag=Genji,scores={Ability4CD=..799}] Ability4CD 1
execute as @p[tag=Genji,scores={Basic_COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Dragonblade","italic":false,"color":"dark_green"}]'}}}}] as @p[tag=Genji,scores={Ability4CD=800..}] at @s run function datapack:genji_functions/weapon3cos

execute as @p[tag=Genji,tag=GenjiDragonblade] at @s run function datapack:genji_functions/dragonbladeparticles

scoreboard players add @p[tag=GenjiDragonblade] Timer3 1
execute as @p[tag=GenjiDragonblade,scores={Timer3=200..}] at @s run function datapack:genji_functions/dragonbladeend
scoreboard players reset @p[tag=Genji,scores={Timer3=200..}] Timer3

# Double Jump
execute as @p[gamemode=!spectator,tag=Genji,nbt={OnGround:0b}] as @p[tag=Genji,scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Genji\'s Shurikens","italic":false}]'}}}}] at @s run tag @s add GenjiDoubleJumping
execute as @p[gamemode=!spectator,tag=Genji,nbt={OnGround:0b}] as @p[tag=Genji,scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Unbreakable:1,display:{Name:'[{"text":"Genji\'s Dragonblade","italic":false,"color":"dark_green"}]'}}}}] at @s run tag @s add GenjiDoubleJumping
scoreboard players add @p[tag=GenjiDoubleJumping] Timer 1
execute at @p[tag=Genji,scores={Timer=1}] run particle minecraft:cloud ~ ~-0.5 ~ 0.5 0 0.5 0.3 10
execute at @p[tag=Genji,scores={Timer=1}] run playsound minecraft:entity.ender_dragon.flap neutral @p[distance=..10] ~ ~ ~ 1 2 1
effect clear @p[tag=Genji,tag=GenjiDoubleJumping,scores={Timer=5..}] levitation
tag @p[tag=Genji,tag=GenjiDoubleJumping,scores={Timer=5..}] remove GenjiDoubleJumping
scoreboard players reset @p[tag=Genji,nbt={OnGround:1b}] Timer
tag @p[tag=Genji,nbt={OnGround:1b}] remove GenjiDoubleJumping

# Wall Climb
execute as @p[tag=Genji,scores={Timer4=..15}] as @p[tag=Genji,nbt={OnGround:0b}] at @s anchored eyes unless block ^ ^ ^0.4 minecraft:air run function datapack:genji_functions/wallclimb
execute as @p[tag=Genji,tag=!GenjiDoubleJumping] at @s anchored feet if block ^ ^ ^0.4 minecraft:air run effect clear @s minecraft:levitation
effect clear @p[tag=Genji,scores={Timer4=15..}] levitation
scoreboard players set @p[tag=Genji,nbt={OnGround:1b}] Timer4 0
