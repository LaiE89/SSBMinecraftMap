# Souls
execute as @e[type=area_effect_cloud,tag=AlucardSoul] at @s if entity @p[distance=..2,gamemode=!spectator,tag=Alucard] run function datapack:alucard_functions/souls

# Ability CDs
title @p[tag=Alucard,scores={Timer2=..9}] actionbar ["",{"text":"Jackal:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Alucard]","objective":"Ability1CD"}},{"text":" || "},{"text":"Shadow Wraith:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Alucard]","objective":"Ability2CD"}},{"text":" || "},{"text":"Baskerville:","color":"dark_purple"},{"text":" "},{"score":{"name":"@p[tag=Alucard]","objective":"Ability3CD"}},{"text":" || "},{"text":"Souls: ","color":"gold"},{"score":{"name":"@p[tag=Alucard]","objective":"Timer2"},"color":"gold"}]
title @p[tag=Alucard,scores={Timer2=10..}] actionbar ["",{"text":"Jackal:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Alucard]","objective":"Ability1CD"}},{"text":" || "},{"text":"Shadow Wraith:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Alucard]","objective":"Ability2CD"}},{"text":" || "},{"text":"Baskerville:","color":"dark_purple"},{"text":" "},{"score":{"name":"@p[tag=Alucard]","objective":"Ability3CD"}},{"text":" || "},{"text":"Souls: ","color":"gold"},{"score":{"name":"@p[tag=Alucard]","objective":"Timer2"},"color":"red"}]

# Jackal Shoot
scoreboard players add @p[tag=Alucard,scores={Ability1CD=..49}] Ability1CD 1
execute as @p[tag=Alucard,tag=!AlucardWraith,scores={Basic_COS=1..}] as @p[tag=Alucard,scores={Ability1CD=50..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Jackal","italic":false,"color":"dark_red"}]'}}}}] at @s run function datapack:alucard_functions/weapon1cos

execute as @e[type=area_effect_cloud,tag=jackalbullet,tag=!facingjackalbullet] at @s run tp @s ~ ~ ~ facing entity @p[tag=Alucard]
tag @e[type=area_effect_cloud,tag=jackalbullet,tag=!facingjackalbullet] add facingjackalbullet
execute as @e[type=area_effect_cloud,tag=jackalbullet] at @s run tp @s ^ ^ ^-2

execute at @e[type=area_effect_cloud,tag=jackalbullet] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Alucard,tag=!baskerville,tag=!jackalbullet,tag=!InLabyrinth] at @s run function datapack:alucard_functions/jackalbullet
execute as @e[type=area_effect_cloud,tag=jackalbullet] at @s if entity @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Alucard,tag=!baskerville,tag=!jackalbullet,tag=!InLabyrinth] run kill @s
execute as @e[type=area_effect_cloud,tag=jackalbullet] at @s run particle minecraft:dust 0.5 0.5 0.5 1 ~ ~1.4 ~ 0.05 0.05 0.05 0 50 

# Shadow Wraith
scoreboard players add @p[tag=Alucard,scores={Ability2CD=..399}] Ability2CD 1
execute as @p[tag=Alucard,gamemode=!spectator,scores={Basic_Shift=1..}] as @p[tag=Alucard,scores={Ability2CD=400..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Alucard's Dark Arts\",\"italic\":false,\"color\":\"dark_red\"}]"}}}}] at @s run function datapack:alucard_functions/weapon2shift

execute at @p[tag=AlucardWraith] run particle minecraft:smoke ~ ~ ~ 1 0.3 1 0 100
execute at @p[tag=AlucardWraith] run particle minecraft:dust 1 0 0 1 ~ ~0.1 ~ 1 0.3 1 0 30

scoreboard players add @p[tag=AlucardWraith] Timer 1
item replace entity @p[tag=AlucardWraith,scores={Timer=100..}] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Alucard\"}"},Enchantments:[{id:protection,lvl:2}],SkullOwner:{Id:[I;-1150411815,-1562621224,-1156881623,-1676449110],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTAxMWVhNTg0Y2FhZTg3OWFjN2ExNzc3ZjZjZmFiOWMyYjVkZjJlOTA2OThjNDE0Yzk3NWRjOTIyNDc5ZDdlYyJ9fX0="}]}}} 1
item replace entity @p[tag=AlucardWraith,scores={Timer=100..}] armor.chest with leather_chestplate{display:{Name:'[{"text":"Alucard\'s Coat","italic":false,"color":"dark_red"}]',color:11546150},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:10,Operation:0,UUID:[I;-120631,10449,18424,-20898],Slot:chest,Name:"generic.armor"},{AttributeName:"generic.armor_toughness",Amount:5,Operation:0,UUID:[I;-120631,10449,18424,-20898],Slot:chest,Name:"generic.armor_toughness"}]} 1
item replace entity @p[tag=AlucardWraith,scores={Timer=100..}] armor.legs with leather_leggings{display:{Name:'[{"text":"Alucard\'s Pants","italic":false,"color":"dark_red"}]',color:4673362},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:0.8,Operation:0,UUID:[I;-120631,19331,18444,-38662],Slot:legs,Name:"generic.knockback_resistance"}]} 1
item replace entity @p[tag=AlucardWraith,scores={Timer=100..}] armor.feet with leather_boots{display:{Name:'[{"text":"Alucard\'s Boots","italic":false,"color":"dark_red"}]',color:4673362},Unbreakable:1} 1
tag @p[tag=AlucardWraith,scores={Timer=100..}] remove AlucardWraith
scoreboard players reset @p[tag=Alucard,scores={Timer=100..}] Timer

# Baskerville
scoreboard players add @p[tag=Alucard,scores={Ability3CD=..399}] Ability3CD 1
execute as @p[tag=Alucard,tag=!AlucardWraith,gamemode=!spectator,scores={Ability3CD=400..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Alucard's Dark Arts\",\"italic\":false,\"color\":\"dark_red\"}]"}}}}] as @p[tag=Alucard,scores={Basic_COS=1..}] at @s run function datapack:alucard_functions/weapon2cos

execute if entity @e[type=armor_stand,tag=baskerville] as @p[gamemode=!spectator,tag=Alucard,scores={Ability3CD=20..150},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Alucard's Dark Arts\",\"italic\":false,\"color\":\"dark_red\"}]"}}}}] as @p[tag=Alucard,scores={Basic_COS=1..}] at @s run function datapack:alucard_functions/baskervilleteleport

execute as @e[type=wandering_trader,tag=baskerville] run data remove entity @s HandItems[0]
execute at @e[type=wandering_trader,tag=baskerville] run execute as @e[limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!baskerville,tag=!InLabyrinth,tag=!Alucard] at @s run function datapack:alucard_functions/alucardpassive2
execute as @e[type=wandering_trader,tag=baskerville] at @s run tp @e[type=armor_stand,tag=baskerville] @s

scoreboard players add @e[type=armor_stand,tag=baskerville] Timer 1
execute at @e[type=armor_stand,tag=baskerville,scores={Timer=30..}] as @e[distance=..2.5,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!baskerville,tag=!InLabyrinth,tag=!Alucard] at @s run function datapack:alucard_functions/baskervillebite
scoreboard players reset @e[type=armor_stand,tag=baskerville,scores={Timer=30..}] Timer

scoreboard players add @e[type=armor_stand,tag=baskerville] Timer2 1
execute at @e[type=armor_stand,tag=baskerville,scores={Timer2=150..}] run particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.5 1 0.5 0 300
kill @e[type=armor_stand,tag=baskerville,scores={Timer2=150..}]

execute unless entity @e[type=armor_stand,tag=baskerville] run kill @e[type=wandering_trader,tag=baskerville]

# Demon Spikes
scoreboard players add @p[tag=Alucard,scores={Ability4CD=..24}] Ability4CD 1
execute as @p[gamemode=!spectator,tag=Alucard,tag=!AlucardWraith,scores={Ability4CD=25..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Jackal","italic":false,"color":"dark_red"}]'}}}}] as @p[tag=Alucard,scores={Basic_Shift=1..}] as @p[tag=Alucard,scores={Timer2=3..}] at @s run function datapack:alucard_functions/weapon1shift

execute as @e[type=area_effect_cloud,tag=alucardspikes] at @s run function datapack:alucard_functions/spikesparticles