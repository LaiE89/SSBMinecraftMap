# Ability CDs
title @p[tag=Lucina,tag=!LucinaDancingBlade] actionbar ["",{"text":"Counter:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Lucina]","objective":"Ability1CD"}},{"text":" || "},{"text":"Critical Hit:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Lucina]","objective":"Ability2CD"}},{"text":" || "},{"text":"Dolphin Slash:","color":"dark_aqua"},{"text":" "},{"score":{"name":"@p[tag=Lucina]","objective":"Ability3CD"}},{"text":" || "},{"text":"Dancing Blade Hits: ","color":"aqua"},{"score":{"name":"@p[tag=Lucina]","objective":"Timer"},"color":"aqua"}]
title @p[tag=Lucina,tag=LucinaDancingBlade] actionbar ["",{"text":"Counter:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Lucina]","objective":"Ability1CD"}},{"text":" || "},{"text":"Critical Hit:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Lucina]","objective":"Ability2CD"}},{"text":" || "},{"text":"Dolphin Slash:","color":"dark_aqua"},{"text":" "},{"score":{"name":"@p[tag=Lucina]","objective":"Ability3CD"}},{"text":" || "},{"text":"Dancing Blade Hits: ","color":"aqua"},{"score":{"name":"@p[tag=Lucina]","objective":"Timer"},"color":"gold"}]

# Dancing Blade
scoreboard players add @p[tag=Lucina,scores={AttackISword=1..}] Timer 1
scoreboard players set @p[tag=Lucina,tag=!LucinaDancingBlade,tag=!LucinaCountering,nbt={HurtTime:9s}] Timer 0

attribute @p[tag=Lucina,scores={Timer=2..},tag=!LucinaDancingBlade] minecraft:generic.knockback_resistance base set 1
effect give @p[tag=Lucina,scores={Timer=2..},tag=!LucinaDancingBlade] minecraft:absorption 3 0 true
effect give @p[tag=Lucina,scores={Timer=2..},tag=!LucinaDancingBlade] minecraft:haste 3 2 true
tag @p[tag=Lucina,scores={Timer=2..},tag=!LucinaDancingBlade] add LucinaDancingBlade

execute at @p[tag=LucinaDancingBlade,scores={AttackISword=1..}] run function datapack:lucina_functions/dancingbladeparticles
execute at @p[tag=LucinaDancingBlade,scores={Timer=5..}] as @e[distance=..10,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Lucina,tag=!InLabyrinth,nbt={HurtTime:10s}] at @s run function datapack:lucina_functions/dancingbladedamage

scoreboard players add @p[tag=Lucina,tag=LucinaDancingBlade] Timer2 1
tag @p[tag=Lucina,tag=LucinaDancingBlade,scores={Timer=5..}] remove LucinaDancingBlade
tag @p[tag=Lucina,tag=LucinaDancingBlade,scores={Timer2=60..}] remove LucinaDancingBlade
effect clear @p[tag=Lucina,scores={Timer=5..}] absorption
effect clear @p[tag=Lucina,scores={Timer=5..}] haste
attribute @p[tag=Lucina,scores={Timer=5..}] minecraft:generic.knockback_resistance base set 0
effect clear @p[tag=Lucina,scores={Timer2=60..}] absorption
effect clear @p[tag=Lucina,scores={Timer2=60..}] haste
attribute @p[tag=Lucina,scores={Timer2=60..}] minecraft:generic.knockback_resistance base set 0
scoreboard players reset @p[tag=Lucina,scores={Timer=5..}] Timer2
scoreboard players set @p[tag=Lucina,scores={Timer=5..}] Timer 0
scoreboard players set @p[tag=Lucina,scores={Timer2=60..}] Timer 0
scoreboard players reset @p[tag=Lucina,scores={Timer2=60..}] Timer2

# Counter
scoreboard players add @p[tag=Lucina,scores={Ability1CD=..199}] Ability1CD 1
execute as @p[gamemode=!spectator,tag=Lucina,scores={Ability1CD=200..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Unbreakable:1,display:{Name:'[{"text":"Parallel Falchion","italic":false,"color":"aqua"}]'}}}}] as @p[tag=Lucina,scores={Shift=1..}] at @s run function datapack:lucina_functions/weapon1shift

scoreboard players add @p[tag=Lucina,tag=LucinaCountering] Timer3 1
effect clear @p[tag=LucinaCountering,scores={Timer3=15..}] resistance
effect clear @p[tag=LucinaCountering,scores={Timer3=15..}] mining_fatigue
tag @p[tag=LucinaCountering,scores={Timer3=15..}] remove LucinaCountering
scoreboard players reset @p[tag=Lucina,scores={Timer3=15..}] Timer3

execute at @p[tag=LucinaCountering,nbt={HurtTime:9s}] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..15] ~ ~ ~ 3 1 1
effect give @p[tag=LucinaCountering,nbt={HurtTime:9s}] minecraft:strength 1 0 true
effect clear @p[tag=LucinaCountering,nbt={HurtTime:9s}] resistance
effect clear @p[tag=LucinaCountering,nbt={HurtTime:9s}] mining_fatigue
tag @p[tag=LucinaCountering,nbt={HurtTime:9s}] remove LucinaCountering
scoreboard players reset @p[tag=Lucina,nbt={HurtTime:9s}] Timer3

execute at @p[tag=Lucina,scores={AttackISword=1..},nbt={ActiveEffects:[{Id:5b}]}] run execute at @e[distance=..10,limit=1,sort=nearest,tag=!Lucina,tag=!InLabyrinth,nbt={HurtTime:10s}] run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.4 1 0.4 0 30
execute at @p[tag=Lucina,scores={AttackISword=1..},nbt={ActiveEffects:[{Id:5b}]}] run playsound minecraft:entity.player.attack.crit neutral @a[distance=..25] ~ ~ ~ 10 0.75 1
effect clear @p[tag=Lucina,scores={AttackISword=1..},nbt={ActiveEffects:[{Id:5b}]}] minecraft:strength

# Critical Hit
scoreboard players add @p[tag=Lucina,scores={Ability2CD=..99}] Ability2CD 1
execute as @p[tag=Lucina,scores={Ability2CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Lucina\'s Skills","italic":false,"color":"dark_aqua"}]'}}}}] as @p[tag=Lucina,scores={COS=1..}] at @s run function datapack:lucina_functions/weapon2cos

execute if entity @e[type=minecraft:area_effect_cloud,tag=LucinaDestination] as @p[tag=Lucina] at @s run function datapack:lucina_functions/criticalhit

execute as @p[tag=Lucina] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=LucinaDestination,limit=1,sort=nearest] eyes run tp @s ^ ^ ^1.5
execute as @p[tag=Lucina] at @s if entity @e[type=minecraft:area_effect_cloud,tag=LucinaDestination,distance=..2] run function datapack:lucina_functions/criticalhitend

# Dolphin Slash
scoreboard players add @p[tag=Lucina,scores={Ability3CD=..99}] Ability3CD 1
execute as @p[gamemode=!spectator,tag=Lucina,scores={Ability3CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Lucina\'s Skills","italic":false,"color":"dark_aqua"}]'}}}}] as @p[tag=Lucina,scores={Shift=1..}] at @s run function datapack:lucina_functions/weapon2shift