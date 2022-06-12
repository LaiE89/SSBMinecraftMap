# Ability CDs
title @p[tag=Mob,tag=!Mob100Percent,scores={Timer3=..99}] actionbar ["",{"text":"Psychic Shove:","color":"light_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Mob]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Telekinesis:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Mob]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Energy Absorption:","color":"dark_blue"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Mob]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Psychic Barrier:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Mob]","objective":"Ability4CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Percentage: ","color":"aqua"},{"score":{"name":"@p[tag=Mob]","objective":"Timer3"},"color":"aqua"}]
title @p[tag=Mob,tag=Mob100Percent,scores={Timer3=..99}] actionbar ["",{"text":"Psychic Shove:","color":"light_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Mob]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Telekinesis:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Mob]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Psychic Lift:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Mob]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Teleport:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Mob]","objective":"Ability4CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"100 PERCENT: ","color":"aqua"},{"score":{"name":"@p[tag=Mob]","objective":"Timer"},"color":"aqua"}]

# 100% passive
scoreboard players add @p[tag=Mob,tag=!Mob100Percent,nbt={HurtTime:9s},scores={Timer3=..99}] Timer3 10

tag @p[tag=Mob,scores={Timer3=100..}] add Mob100Percent
execute as @p[tag=Mob,scores={Timer3=100..}] at @s run function datapack:mob_functions/mobreaching100

effect give @p[tag=Mob100Percent] minecraft:glowing 10 0 true

scoreboard players add @p[tag=Mob100Percent] Timer 1
effect clear @p[tag=Mob100Percent,scores={Timer=300..}] minecraft:glowing
effect clear @p[tag=Mob100Percent,scores={Timer=300..}] minecraft:absorption
tag @p[tag=Mob100Percent,scores={Timer=300..}] remove Mob100Percent
scoreboard players reset @p[tag=Mob,scores={Timer=300..}] Timer

execute at @p[tag=Mob100Percent] run particle minecraft:enchant ~ ~1 ~ 0.4 1 0.4 10 25

# Psychic Shove
scoreboard players add @p[tag=Mob,scores={Ability1CD=..99}] Ability1CD 1
execute as @p[gamemode=!spectator,tag=Mob,scores={Basic_Shift=1..},tag=!Mob100Percent] as @p[tag=Mob,scores={Ability1CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Offensive Telekinesis\",\"italic\":false}]"}}}}] at @s run execute as @e[distance=..15,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Mob,tag=!InLabyrinth] at @s run function datapack:mob_functions/weapon1shift

execute as @p[gamemode=!spectator,tag=Mob,scores={Basic_Shift=1..},tag=Mob100Percent] as @p[tag=Mob,scores={Ability1CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Offensive Telekinesis\",\"italic\":false}]"}}}}] at @s run execute as @e[distance=..20,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Mob,tag=!InLabyrinth] at @s run function datapack:mob_functions/weapon1shift100

# Telekinesis
scoreboard players add @p[tag=Mob,scores={Ability2CD=..99}] Ability2CD 1
execute as @p[tag=Mob,scores={Basic_COS=1..},tag=!Mob100Percent] as @p[tag=Mob,scores={Ability2CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Offensive Telekinesis\",\"italic\":false}]"}}}}] at @s run function datapack:mob_functions/weapon1cos

execute at @p[tag=Mob,scores={Basic_COS=1..},tag=Mob100Percent] as @p[tag=Mob,scores={Ability2CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Offensive Telekinesis\",\"italic\":false}]"}}}}] at @s run function datapack:mob_functions/weapon1cos100

execute as @e[type=armor_stand,tag=telekinesis,tag=!facingMob] at @s run tp @s ~ ~ ~ facing entity @p[tag=Mob]
tag @e[type=armor_stand,tag=telekinesis,tag=!facingMob] add facingMob
execute as @e[type=armor_stand,tag=telekinesis] at @s run tp @s ^ ^1.25 ^-1
execute as @e[type=armor_stand,tag=telekinesis] at @s run particle minecraft:dust 0 1 1 1 ~ ~1.4 ~ 0.3 0.3 0.3 0 50 
execute at @e[type=armor_stand,tag=telekinesis] as @e[distance=..2.5,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Mob,tag=!InLabyrinth] at @s run function datapack:mob_functions/telekinesis
scoreboard players add @e[type=armor_stand,tag=telekinesis] Timer 1
kill @e[type=armor_stand,tag=telekinesis,scores={Timer=20..}]

# Absorb
scoreboard players add @p[tag=Mob,scores={Ability3CD=..199}] Ability3CD 1
execute as @p[gamemode=!spectator,tag=Mob,scores={Basic_Shift=1..},tag=!Mob100Percent] as @p[tag=Mob,scores={Ability3CD=200..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Defensive Telekinesis\",\"italic\":false}]"},Enchantments:[{id:thorns,lvl:3}],Unbreakable:1}}}] at @s run function datapack:mob_functions/weapon2shift

execute as @p[tag=Mob,scores={Basic_Shift=1..},gamemode=!spectator,tag=Mob100Percent] as @p[tag=Mob,scores={Ability3CD=200..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Defensive Telekinesis\",\"italic\":false}]"},Enchantments:[{id:thorns,lvl:3}],Unbreakable:1}}}] at @s run function datapack:mob_functions/weapon2shift100

execute at @p[tag=MobAbsorb] run particle minecraft:enchant ~ ~1 ~ 0.4 1 0.4 10 25

execute at @p[tag=MobAbsorb] as @e[tag=projectile,tag=!cosmetics,tag=!telekinesis,distance=..4] at @s run function datapack:mob_functions/absorb

scoreboard players add @p[tag=MobAbsorb] Timer2 1
tag @p[tag=MobAbsorb,scores={Timer2=40..}] remove MobAbsorb
scoreboard players reset @p[tag=Mob,scores={Timer2=40..}] Timer2

# Shield
scoreboard players add @p[tag=Mob,scores={Ability4CD=..99}] Ability4CD 1
execute as @p[tag=Mob,scores={Basic_COS=1..},tag=!Mob100Percent] as @p[tag=Mob,scores={Ability4CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Defensive Telekinesis\",\"italic\":false}]"},Enchantments:[{id:thorns,lvl:3}],Unbreakable:1}}}] at @s run function datapack:mob_functions/weapon2cos

execute as @p[tag=Mob,scores={Basic_COS=1..},tag=Mob100Percent] as @p[tag=Mob,scores={Ability4CD=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Defensive Telekinesis\",\"italic\":false}]"},Enchantments:[{id:thorns,lvl:3}],Unbreakable:1}}}] at @s run function datapack:mob_functions/weapon2cos100