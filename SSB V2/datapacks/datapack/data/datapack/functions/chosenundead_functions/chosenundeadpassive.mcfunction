# Stamina Bar
title @p[tag=ChosenUndead] actionbar [{"text":"Stamina: ","color":"gold"},{"score":{"name":"@p[tag=ChosenUndead]","objective":"Timer7"},"color":"gold"},{"text":"/100","color":"gold"}]

# Stamina
scoreboard players add @p[tag=ChosenUndead,tag=!ChosenUndeadResting,scores={Timer7=..99}] Timer7 1
scoreboard players add @p[tag=ChosenUndeadResting] Timer8 1
tag @p[tag=ChosenUndeadResting,scores={Timer8=10..}] remove ChosenUndeadResting
scoreboard players reset @p[tag=ChosenUndead,scores={Timer8=10..}] Timer8

# Roll Backwards
scoreboard players add @p[tag=ChosenUndead,scores={Ability1CD=..19}] Ability1CD 1
execute as @p[tag=ChosenUndead,scores={Ability1CD=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Roll\",\"italic\":false,\"color\":\"white\"}]"},Unbreakable:1}}}] as @p[gamemode=!spectator,tag=ChosenUndead,scores={Shift=1..}] as @p[tag=ChosenUndead,scores={Timer7=20..}] at @s run function datapack:chosenundead_functions/rollbackwards

# Roll Forwards
scoreboard players add @p[tag=ChosenUndead,scores={Ability4CD=..19}] Ability4CD 1
execute as @p[tag=ChosenUndead,scores={Ability4CD=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Roll\",\"italic\":false,\"color\":\"white\"}]"},Unbreakable:1}}}] as @p[tag=ChosenUndead,scores={COS=1..}] as @p[tag=ChosenUndead,scores={Timer7=20..}] at @s run function datapack:chosenundead_functions/rollforwards
execute as @p[tag=ChosenUndead] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll,limit=1,sort=nearest] eyes run tp @s ^ ^ ^1

# Greatsword Swing
execute at @p[gamemode=!spectator,tag=ChosenUndead,nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{display:{Name:"[{\"text\":\"Greatsword of Artorias\",\"italic\":false,\"color\":\"dark_aqua\"}]"}}}}] if entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll,distance=..3] run function datapack:chosenundead_functions/greatsword
execute at @p[tag=ChosenUndead] if entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll,distance=..3] run kill @e[type=area_effect_cloud,tag=DarkSoulsRoll]

# Weapon Switch
scoreboard players add @p[tag=ChosenUndead,scores={Timer4=..19},nbt={Inventory:[{id:"minecraft:netherite_sword",tag:{display:{Name:"[{\"text\":\"Greatsword of Artorias\",\"italic\":false,\"color\":\"dark_aqua\"}]"}}}]}] Timer4 1
scoreboard players add @p[tag=ChosenUndead,scores={Timer5=..19},nbt={Inventory:[{id:"minecraft:diamond_hoe",tag:{display:{Name:'[{"text":"Friede\'s Great Scythe","italic":false,"color":"dark_aqua"}]'}}}]}] Timer5 1

execute at @p[tag=ChosenUndead,scores={Timer4=20..}] run replaceitem entity @p[tag=ChosenUndead,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{display:{Name:"[{\"text\":\"Greatsword of Artorias\",\"italic\":false,\"color\":\"dark_aqua\"}]"}}}}] weapon diamond_hoe{Unbreakable:1,display:{Name:'[{"text":"Friede\'s Great Scythe","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ice Spikes: ","italic":false,"color":"aqua"},{"text":"PASSIVE","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"If you land 3 melee","italic":false,"color":"gray"}]','[{"text":"attacks, you shoot","italic":false,"color":"gray"}]','[{"text":"out ice spikes that","italic":false,"color":"gray"}]','[{"text":"slow enemies and","italic":false,"color":"gray"}]','[{"text":"deal damage.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Swap to Greatsword: ","italic":false,"color":"aqua"},{"text":"SHIFT","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Literally just swaps","italic":false,"color":"gray"}]','[{"text":"your weapon for a","italic":false,"color":"gray"}]','[{"text":"greatsword.","italic":false,"color":"gray"}]']},Enchantments:[{id:frost_walker,lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-120106,6450,185654,-12900],Slot:mainhand,Name:"generic.attack_damage"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-120106,6450,185654,-12900],Slot:mainhand,Name:"generic.attack_speed"}],CustomModelData:66}
execute at @p[tag=ChosenUndead,scores={Timer4=20..}] run scoreboard players set @p[tag=ChosenUndead,scores={Shift=1..}] Timer4 1

execute at @p[tag=ChosenUndead,scores={Timer5=20..}] run replaceitem entity @p[tag=ChosenUndead,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{display:{Name:'[{"text":"Friede\'s Great Scythe","italic":false,"color":"dark_aqua"}]'}}}}] weapon netherite_sword{display:{Name:"[{\"text\":\"Greatsword of Artorias\",\"italic\":false,\"color\":\"dark_aqua\"}]",Lore:['[{"text":"","italic":false}]','[{"text":"Roll and Hit: ","italic":false,"color":"aqua"},{"text":"PASSIVE","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"If you swap to this","italic":false,"color":"gray"}]','[{"text":"weapon mid-roll, you","italic":false,"color":"gray"}]','[{"text":"deal massive damage","italic":false,"color":"gray"}]','[{"text":"to enemies around you.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Swap to Scythe: ","italic":false,"color":"aqua"},{"text":"SHIFT","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Literally just swaps","italic":false,"color":"gray"}]','[{"text":"your weapon for a","italic":false,"color":"gray"}]','[{"text":"scythe.","italic":false,"color":"gray"}]']},Enchantments:[{id:knockback,lvl:3},{id:sweeping,lvl:10}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:15,Operation:0,UUID:[I;-120105,22027,12024,-44054],Slot:mainhand,Name:"generic.attack_damage"},{AttributeName:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;-120105,22027,12024,-44054],Slot:mainhand,Name:"generic.attack_speed"}],CustomModelData:65} 1
execute at @p[tag=ChosenUndead,scores={Timer5=20..}] run scoreboard players set @p[tag=ChosenUndead,scores={Shift=1..}] Timer5 1

# Friede's Scythe Ability
scoreboard players add @p[tag=ChosenUndead,scores={Attack=1..},nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{display:{Name:'[{"text":"Friede\'s Great Scythe","italic":false,"color":"dark_aqua"}]'}}}}] Timer6 1
execute at @p[tag=ChosenUndead,scores={Timer6=3..}] run function datapack:chosenundead_functions/scythe
scoreboard players reset @p[tag=ChosenUndead,scores={Timer6=3..}] Timer6

execute as @e[type=area_effect_cloud,tag=friedefrost,tag=!castedfriedefrost] at @s run tp @s ~ ~ ~ facing entity @p[tag=ChosenUndead]
tag @e[type=area_effect_cloud,tag=friedefrost,tag=!castedfriedefrost] add castedfriedefrost
execute as @e[type=area_effect_cloud,tag=friedefrost] at @s run tp @s ^ ^ ^-0.25
execute as @e[type=area_effect_cloud,tag=friedefrost] at @s run particle minecraft:block minecraft:ice ~ ~1 ~ 0.2 0.2 0.2 0 20
execute as @e[type=area_effect_cloud,tag=friedefrost] at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0 1
execute at @e[type=area_effect_cloud,tag=friedefrost] as @e[distance=..2,tag=!ChosenUndead,tag=!InLabyrinth] at @s run function datapack:damage1
execute at @e[type=area_effect_cloud,tag=friedefrost] run effect give @e[distance=..2,tag=!ChosenUndead,tag=!InLabyrinth] minecraft:slowness 2 2 true
execute at @e[type=area_effect_cloud,tag=friedefrost] if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!item,type=!arrow,type=!firework_rocket,tag=!InLabyrinth,tag=!ChosenUndead,distance=..2] run playsound minecraft:block.glass.break neutral @a[distance=..10] ~ ~ ~ 0.5 0.5 1

# Potions
scoreboard players add @p[tag=ChosenUndead,nbt={Inventory:[{id:"minecraft:gray_dye",tag:{display:{Name:"[{\"text\":\"Consumables\",\"italic\":false,\"color\":\"gold\"}]"}}}]},scores={Ability2CD=..899}] Ability2CD 1
execute at @p[tag=ChosenUndead,scores={Ability2CD=300}] run clear @p[tag=ChosenUndead] minecraft:gray_dye{display:{Name:"[{\"text\":\"Consumables\",\"italic\":false,\"color\":\"gold\"}]"},Unbreakable:1}
execute at @p[tag=ChosenUndead,scores={Ability2CD=300}] run give @p[tag=ChosenUndead] minecraft:potion{CustomPotionEffects:[{Id:6,Amplifier:1,ShowParticles:0b}],CustomPotionColor:16161280,display:{Name:"\"Estus Flask\""}}
scoreboard players set @p[tag=ChosenUndead,scores={Ability2CD=300}] Ability2CD 301
execute at @p[tag=ChosenUndead,scores={Ability2CD=600}] run clear @p[tag=ChosenUndead] minecraft:gray_dye{display:{Name:"[{\"text\":\"Consumables\",\"italic\":false,\"color\":\"gold\"}]"},Unbreakable:1}
execute at @p[tag=ChosenUndead,scores={Ability2CD=600}] run give @p[tag=ChosenUndead] minecraft:potion{CustomPotionEffects:[{Id:5,Duration:200,ShowParticles:1b}],CustomPotionColor:15726080,display:{Name:"\"Gold Pine Bundle\""}}
scoreboard players set @p[tag=ChosenUndead,scores={Ability2CD=600}] Ability2CD 601
execute at @p[tag=ChosenUndead,scores={Ability2CD=900}] run clear @p[tag=ChosenUndead] minecraft:gray_dye{display:{Name:"[{\"text\":\"Consumables\",\"italic\":false,\"color\":\"gold\"}]"},Unbreakable:1}
execute at @p[tag=ChosenUndead,scores={Ability2CD=900}] run give @p[tag=ChosenUndead] minecraft:potion{CustomPotionEffects:[{Id:10,Amplifier:2,Duration:200,ShowParticles:0b},{Id:21,Amplifier:4,Duration:200,ShowParticles:0b},{Id:24,Duration:200,ShowParticles:0b}],CustomPotionColor:9521928,display:{Name:"\"Siegbrau\""}}
scoreboard players set @p[tag=ChosenUndead,scores={Ability2CD=900}] Ability2CD 1

replaceitem entity @p[tag=ChosenUndead,scores={UsedPot=1..}] weapon.mainhand gray_dye{display:{Name:"[{\"text\":\"Consumables\",\"italic\":false,\"color\":\"gold\"}]",Lore:['[{"text":"","italic":false}]','[{"text":"Consumables:","italic":false,"color":"gold"},{"text":" ","color":"aqua"},{"text":"PASSIVE","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Periodically gain a","italic":false,"color":"gray"}]','[{"text":"new potion. Can","italic":false,"color":"gray"}]','[{"text":"either be a:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Estus Flask:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Heals you.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Gold Pine Bundle:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Gives you strength.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Siegbrau:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Doubles your health","italic":false,"color":"gray"}]','[{"text":"and gives you","italic":false,"color":"gray"}]','[{"text":"regeneration.","italic":false,"color":"gray"}]']},Unbreakable:1} 1

# Spells
scoreboard players add @p[tag=ChosenUndead,nbt={Inventory:[{id:"minecraft:gray_dye",tag:{display:{Name:"[{\"text\":\"Magic\",\"italic\":false,\"color\":\"gold\"}]"}}}]},scores={Ability3CD=..899}] Ability3CD 1
execute at @p[tag=ChosenUndead,scores={Ability3CD=300}] run clear @p[tag=ChosenUndead] minecraft:gray_dye{display:{Name:"[{\"text\":\"Magic\",\"italic\":false,\"color\":\"gold\"}]"},Unbreakable:1}
execute at @p[tag=ChosenUndead,scores={Ability3CD=300}] run give @p[tag=ChosenUndead] carrot_on_a_stick{display:{Name:"[{\"text\":\"Soul Arrow\",\"italic\":false,\"color\":\"aqua\"}]"},Unbreakable:1,CustomModelData:39} 1
scoreboard players set @p[tag=ChosenUndead,scores={Ability3CD=300}] Ability3CD 301
execute at @p[tag=ChosenUndead,scores={Ability3CD=600}] run clear @p[tag=ChosenUndead] minecraft:gray_dye{display:{Name:"[{\"text\":\"Magic\",\"italic\":false,\"color\":\"gold\"}]"},Unbreakable:1}
execute at @p[tag=ChosenUndead,scores={Ability3CD=600}] run give @p[tag=ChosenUndead] carrot_on_a_stick{display:{Name:"[{\"text\":\"Firestorm\",\"italic\":false,\"color\":\"gold\"}]"},Unbreakable:1,CustomModelData:40}
scoreboard players set @p[tag=ChosenUndead,scores={Ability3CD=600}] Ability3CD 601
execute at @p[tag=ChosenUndead,scores={Ability3CD=900}] run clear @p[tag=ChosenUndead] minecraft:gray_dye{display:{Name:"[{\"text\":\"Magic\",\"italic\":false,\"color\":\"gold\"}]"},Unbreakable:1}
execute at @p[tag=ChosenUndead,scores={Ability3CD=900}] run give @p[tag=ChosenUndead] carrot_on_a_stick{display:{Name:"[{\"text\":\"Tranquil Walk of Peace\",\"italic\":false,\"color\":\"dark_red\"}]"},Unbreakable:1,CustomModelData:41}
scoreboard players set @p[tag=ChosenUndead,scores={Ability3CD=900}] Ability3CD 1

# Soul Arrow
execute as @p[tag=ChosenUndead,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Soul Arrow\",\"italic\":false,\"color\":\"aqua\"}]"},Unbreakable:1}}}] at @s run function datapack:chosenundead_functions/soularrow

execute as @e[type=area_effect_cloud,tag=soularrow,tag=!castedsoularrow] at @s run tp @s ~ ~ ~ facing entity @p[tag=ChosenUndead]
tag @e[type=area_effect_cloud,tag=soularrow,tag=!castedsoularrow] add castedsoularrow
execute as @e[type=area_effect_cloud,tag=soularrow] at @s run tp @s ^ ^ ^-1.5
execute as @e[type=area_effect_cloud,tag=soularrow] at @s run particle minecraft:dust 0 1 1 2 ~ ~1 ~ 0.1 0.1 0.1 0 20
execute at @e[type=area_effect_cloud,tag=soularrow] as @e[distance=..2,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!ChosenUndead,tag=!InLabyrinth] at @s run function datapack:chosenundead_functions/soularrowdamage

# Firestorm
execute as @p[tag=ChosenUndead,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Firestorm\",\"italic\":false,\"color\":\"gold\"}]"},Unbreakable:1}}}] at @s run function datapack:chosenundead_functions/firestorm

scoreboard players add @p[tag=ChosenUndeadFirestorm] Timer2 1

execute at @p[tag=ChosenUndeadFirestorm] run particle minecraft:falling_lava ~ ~0.5 ~ 0.4 1 0.4 0 10

execute at @p[gamemode=!spectator,tag=ChosenUndeadFirestorm] as @e[distance=..8,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!ChosenUndead,tag=!InLabyrinth] at @s run function datapack:chosenundead_functions/firestormdamage
execute at @p[gamemode=!spectator,tag=ChosenUndeadFirestorm,scores={Timer2=20}] run function datapack:chosenundead_functions/firestormparticles1
execute at @p[gamemode=!spectator,tag=ChosenUndeadFirestorm,scores={Timer2=40}] run function datapack:chosenundead_functions/firestormparticles2
execute at @p[gamemode=!spectator,tag=ChosenUndeadFirestorm,scores={Timer2=60}] run function datapack:chosenundead_functions/firestormparticles3

tag @p[tag=ChosenUndeadFirestorm,scores={Timer2=70..}] remove ChosenUndeadFirestorm
scoreboard players reset @p[tag=ChosenUndead,scores={Timer2=70..}] Timer2

# Walk of Peace
execute as @p[tag=ChosenUndead,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Tranquil Walk of Peace\",\"italic\":false,\"color\":\"dark_red\"}]"},Unbreakable:1}}}] at @s run function datapack:chosenundead_functions/walkofpeace

execute at @p[tag=ChosenUndeadTranquilWalk] as @e[distance=..8,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!ChosenUndead,tag=!InLabyrinth] at @s run function datapack:chosenundead_functions/walkofpeaceeffect
execute at @p[tag=ChosenUndeadTranquilWalk] run particle minecraft:falling_dust minecraft:glowstone ~ ~0.5 ~ 0.4 1 0.4 0 2

scoreboard players add @p[tag=ChosenUndeadTranquilWalk] Timer3 1
tag @p[tag=ChosenUndeadTranquilWalk,scores={Timer3=100..}] remove ChosenUndeadTranquilWalk
scoreboard players reset @p[tag=ChosenUndead,scores={Timer3=100..}] Timer3

replaceitem entity @p[tag=ChosenUndead,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Soul Arrow\",\"italic\":false,\"color\":\"aqua\"}]"},Unbreakable:1}}}] weapon.mainhand gray_dye{display:{Name:"[{\"text\":\"Magic\",\"italic\":false,\"color\":\"gold\"}]",Lore:['[{"text":"","italic":false}]','[{"text":"Magic:","italic":false,"color":"gold"},{"text":" ","color":"aqua"},{"text":"PASSIVE","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Periodically gain a","italic":false,"color":"gray"}]','[{"text":"new spell. Can either","italic":false,"color":"gray"}]','[{"text":"be a:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Soul Arrow:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Shoot a damaging projectile.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Firestorm:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Deals constant damage to","italic":false,"color":"gray"}]','[{"text":"enemies around you. However,","italic":false,"color":"gray"}]','[{"text":"you cannot attack and you","italic":false,"color":"gray"}]','[{"text":"are slowed.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Tranquil Walk of Peace:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Slows all enemies","italic":false,"color":"gray"}]','[{"text":"around you.","italic":false,"color":"gray"}]']},Unbreakable:1} 1
replaceitem entity @p[tag=ChosenUndead,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Firestorm\",\"italic\":false,\"color\":\"gold\"}]"},Unbreakable:1}}}] weapon.mainhand gray_dye{display:{Name:"[{\"text\":\"Magic\",\"italic\":false,\"color\":\"gold\"}]",Lore:['[{"text":"","italic":false}]','[{"text":"Magic:","italic":false,"color":"gold"},{"text":" ","color":"aqua"},{"text":"PASSIVE","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Periodically gain a","italic":false,"color":"gray"}]','[{"text":"new spell. Can either","italic":false,"color":"gray"}]','[{"text":"be a:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Soul Arrow:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Shoot a damaging projectile.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Firestorm:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Deals constant damage to","italic":false,"color":"gray"}]','[{"text":"enemies around you. However,","italic":false,"color":"gray"}]','[{"text":"you cannot attack and you","italic":false,"color":"gray"}]','[{"text":"are slowed.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Tranquil Walk of Peace:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Slows all enemies","italic":false,"color":"gray"}]','[{"text":"around you.","italic":false,"color":"gray"}]']},Unbreakable:1} 1
replaceitem entity @p[tag=ChosenUndead,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Tranquil Walk of Peace\",\"italic\":false,\"color\":\"dark_red\"}]"},Unbreakable:1}}}] weapon.mainhand gray_dye{display:{Name:"[{\"text\":\"Magic\",\"italic\":false,\"color\":\"gold\"}]",Lore:['[{"text":"","italic":false}]','[{"text":"Magic:","italic":false,"color":"gold"},{"text":" ","color":"aqua"},{"text":"PASSIVE","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"Periodically gain a","italic":false,"color":"gray"}]','[{"text":"new spell. Can either","italic":false,"color":"gray"}]','[{"text":"be a:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Soul Arrow:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Shoot a damaging projectile.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Firestorm:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Deals constant damage to","italic":false,"color":"gray"}]','[{"text":"enemies around you. However,","italic":false,"color":"gray"}]','[{"text":"you cannot attack and you","italic":false,"color":"gray"}]','[{"text":"are slowed.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Tranquil Walk of Peace:","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Slows all enemies","italic":false,"color":"gray"}]','[{"text":"around you.","italic":false,"color":"gray"}]']},Unbreakable:1} 1