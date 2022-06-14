# HAS THE ISSUE THAT IF ANOTHER PLAYER STEPS ON THE RESET WHILE RISE IS OUT, ABIAN IS STUCK AT SWAP AND CANNOT SWITCH TO RISE 

# - Highlighting Weapon Wheel -
execute as @p[tag=Abian] at @s anchored eyes facing entity @e[type=armor_stand,tag=AbianAutismAwarenessDayWeaponWheel,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.17] run function datapack:abian_functions/axe
execute as @p[tag=Abian] at @s anchored eyes facing entity @e[type=armor_stand,tag=AbianAutismAwarenessDayWeaponWheel,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.17] run data remove entity @e[type=minecraft:armor_stand,tag=AbianAutismAwarenessDayWeaponWheel,limit=1] CustomNameVisible

execute as @p[tag=Abian] at @s anchored eyes facing entity @e[type=armor_stand,tag=StarstormWeaponWheel,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.17] run function datapack:abian_functions/starstorm
execute as @p[tag=Abian] at @s anchored eyes facing entity @e[type=armor_stand,tag=StarstormWeaponWheel,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.17] run data remove entity @e[type=minecraft:armor_stand,tag=StarstormWeaponWheel,limit=1] CustomNameVisible

execute as @p[tag=Abian] at @s anchored eyes facing entity @e[type=armor_stand,tag=AbianLifestealWeaponWheel,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.17] run function datapack:abian_functions/bow
execute as @p[tag=Abian] at @s anchored eyes facing entity @e[type=armor_stand,tag=AbianLifestealWeaponWheel,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.17] run data remove entity @e[type=armor_stand,tag=AbianLifestealWeaponWheel,limit=1] CustomNameVisible

execute as @p[tag=Abian] at @s anchored eyes facing entity @e[type=armor_stand,tag=AbianOverfluxWeaponWheel,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.17] run function datapack:abian_functions/overflux
execute as @p[tag=Abian] at @s anchored eyes facing entity @e[type=armor_stand,tag=AbianOverfluxWeaponWheel,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.17] run data remove entity @e[type=armor_stand,tag=AbianOverfluxWeaponWheel,limit=1] CustomNameVisible

execute as @p[tag=Abian] at @s anchored eyes facing entity @e[type=armor_stand,tag=AbianRiseWeaponWheel,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.17] run function datapack:abian_functions/rise
execute as @p[tag=Abian] at @s anchored eyes facing entity @e[type=armor_stand,tag=AbianRiseWeaponWheel,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.17] run data remove entity @e[type=minecraft:armor_stand,tag=AbianRiseWeaponWheel,limit=1] CustomNameVisible


# - Weapon Wheel -
scoreboard players add @p[tag=Abian,scores={Basic_Shift=0}] Basic_ShiftOff 1
scoreboard players reset @p[tag=Abian,scores={Basic_ShiftOff=3..}] Shift
scoreboard players reset @p[tag=Abian,scores={Basic_Shift=1..}] Basic_ShiftOff

scoreboard players add @p[gamemode=!spectator,tag=Abian,scores={Basic_Shift=1..},predicate=datapack:abian_items/abian_weapon] Basic_ShiftOn 1
scoreboard players reset @p[tag=Abian,scores={Basic_ShiftOff=3..}] Basic_ShiftOn

## Weapon Wheel
execute as @p[tag=Abian,scores={Basic_ShiftOn=1}] at @s run function datapack:abian_functions/weaponwheel
execute at @p[tag=Abian,scores={Basic_ShiftOn=1..}] as @e[type=armor_stand,tag=AbianWeapons] at @s run tp @s ~ ~ ~ facing entity @p[tag=Abian]
execute as @p[tag=Abian,scores={Basic_ShiftOff=3..}] at @s run kill @e[type=armor_stand,tag=AbianWeapons]

scoreboard players reset @p[tag=Abian,scores={Basic_ShiftOff=3..}] Basic_ShiftOff


# - The Autism Awareness Day -
title @p[tag=Abian,tag=!AbianMaxAutism] actionbar ["",{"text":"Overflux:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Abian]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Rise:","color":"light_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Abian]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Autism Levels: ","color":"gold"},{"score":{"name":"@p[tag=Abian]","objective":"Timer"},"color":"gold"},{"text":"/3","color":"gold"}]
title @p[tag=Abian,tag=AbianMaxAutism] actionbar ["",{"text":"Overflux:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Abian]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Rise:","color":"light_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Abian]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"MAX AUTISM","color":"gold"}]

execute as @p[tag=Abian,scores={Basic_Attack=1..},predicate=datapack:abian_items/axe] at @s if entity @e[nbt={HurtTime:10s},sort=nearest,limit=1,distance=..8] run scoreboard players add @s Timer 1

execute as @p[tag=Abian,scores={Timer=3..}] at @s run function datapack:abian_functions/maxautism

execute as @p[tag=AbianMaxAutism] at @s run particle minecraft:falling_dust red_wool ~ ~1 ~ 0.3 1 0.3 2 1
execute as @p[tag=AbianMaxAutism] at @s run particle minecraft:falling_dust orange_wool ~ ~1 ~ 0.3 1 0.3 2 1


# - Starstorm -
execute as @p[tag=Abian,scores={Ability1CD=..29}] at @s run scoreboard players add @s Ability1CD 1
execute as @p[tag=Abian,scores={Ability1CD=30..},predicate=datapack:abian_items/starstorm] at @s as @s[scores={Basic_COS=1..}] run function datapack:abian_functions/starstormuse

execute as @e[type=armor_stand,tag=AbianStarstorm] at @s run function datapack:abian_functions/abianpassive4

execute as @e[type=armor_stand,tag=AbianStarstorm2,tag=!AbianStarstormBuffed] at @s run particle dust 0 1 1 1 ~ ~1.5 ~ 0.2 0.2 0.2 1 50
execute as @e[type=armor_stand,tag=AbianStarstorm2] at @s run tp @s ~ ~-1.2 ~

execute as @e[type=armor_stand,tag=AbianStarstorm2] at @s unless block ~ ~ ~ air run playsound minecraft:block.end_gateway.spawn neutral @a[distance=..50] ~ ~ ~ 2 0 1
execute as @e[type=armor_stand,tag=AbianStarstorm2,tag=!AbianStarstormBuffed] at @s unless block ~ ~ ~ air run particle dust 0 1 1 1 ~ ~1 ~ 1 0.4 1 0 200
execute as @e[type=armor_stand,tag=AbianStarstorm2,tag=!AbianStarstormBuffed] at @s unless block ~ ~ ~ air run kill @s

execute as @e[tag=!Abian,tag=!InLabyrinth,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit] at @s if entity @e[type=armor_stand,tag=AbianStarstorm2,tag=!AbianStarstormBuffed,distance=..3] run function datapack:damage1


# PK Starstorm (Buffed by Autism Awareness Day)
execute as @e[type=armor_stand,tag=AbianStarstorm2] if entity @p[tag=AbianMaxAutism] at @s run tag @s add AbianStarstormBuffed
execute as @e[type=armor_stand,tag=AbianStarstorm2] if entity @p[tag=AbianMaxAutism] at @s run tag @p[tag=AbianMaxAutism] remove AbianMaxAutism

execute as @e[type=armor_stand,tag=AbianStarstormBuffed] at @s run particle dust 0.5 0 0 1 ~ ~1.5 ~ 0.35 0.35 0.35 1 100

execute as @e[type=armor_stand,tag=AbianStarstormBuffed] at @s unless block ~ ~ ~ air run particle dust 1 0 0 1 ~ ~1.5 ~ 2 1 2 0 400
execute as @e[type=armor_stand,tag=AbianStarstormBuffed] at @s unless block ~ ~ ~ air run kill @s

execute as @e[tag=!Abian,tag=!InLabyrinth,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit] at @s if entity @e[type=armor_stand,tag=AbianStarstormBuffed,distance=..5] run function datapack:abian_functions/starstormdamage


# - Lifesteal -

# crit arrow
execute at @p[tag=Abian,scores={Basic_Bow=1..}] run execute positioned ^ ^1.35 ^1 run function datapack:abian_functions/lifestealarrow
execute as @e[type=arrow,tag=AbianLifesteal] at @s run function datapack:abian_functions/lifestealarrow2


# Lifesteal (Buffed by Autism Awareness Day)
execute as @p[tag=Abian,scores={Basic_Bow=1..},tag=AbianMaxAutism] at @s run function datapack:abian_functions/lifestealmaxautism

execute as @e[type=armor_stand,tag=AbianLifestealBuffed] at @s run scoreboard players add @s Timer 1
execute as @e[type=armor_stand,tag=AbianLifestealBuffed,scores={Timer=50..}] at @s run kill @s

execute as @e[type=armor_stand,tag=AbianLifestealBuffed] at @s run particle minecraft:dust 0 1 0 2 ~ ~ ~ 0 0 0 1 1
execute as @e[type=armor_stand,tag=AbianLifestealBuffed] at @s run particle minecraft:sneeze ~ ~ ~ 0 0 0 0 2

execute as @e[type=armor_stand,tag=AbianLifestealBuffed,tag=AbianLifestealBuffed1] at @s run tp @s ^1 ^0.1 ^1 facing entity @e[tag=!Abian,limit=1,sort=nearest,tag=!InLabyrinth,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit]
execute as @e[type=armor_stand,tag=AbianLifestealBuffed,tag=AbianLifestealBuffed2] at @s run tp @s ^-1 ^0.1 ^1 facing entity @e[tag=!Abian,limit=1,sort=nearest,tag=!InLabyrinth,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit]
execute as @e[type=armor_stand,tag=AbianLifestealBuffed,tag=AbianLifestealBuffed3] at @s run tp @s ^ ^1 ^1 facing entity @e[tag=!Abian,limit=1,sort=nearest,tag=!InLabyrinth,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit]

execute as @e[type=armor_stand,tag=AbianLifestealBuffed] at @s if entity @e[tag=!Abian,tag=!InLabyrinth,type=!arrow,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,distance=..2] run function datapack:abian_functions/lifestealmaxdamage


# - Overflux -
execute as @p[tag=Abian,scores={Ability2CD=..499}] at @s run scoreboard players add @s Ability2CD 1
execute as @p[tag=Abian,scores={Ability2CD=500..},predicate=datapack:abian_items/flux] at @s run execute as @p[scores={Basic_COS=1..},tag=Abian] at @s run function datapack:abian_functions/flux

scoreboard players add @e[type=armor_stand,tag=AbianOverflux] Timer 1

execute if entity @e[type=armor_stand,tag=AbianOverflux] run function datapack:abian_functions/abianpassive2

scoreboard players set @e[type=armor_stand,tag=AbianOverflux,scores={Timer=60..}] Timer 0

execute as @e[type=armor_stand,tag=AbianOverflux] at @s run tp @s ~ ~ ~ ~15 ~

execute as @e[type=armor_stand,tag=AbianOverflux,tag=!AbianOverfluxBuffed] at @s run function datapack:abian_functions/fluxnonbuffed

execute as @e[type=armor_stand,tag=AbianOverflux] at @s run function datapack:abian_functions/fluxparticles

execute at @e[tag=AbianOverflux,type=armor_stand] run execute if entity @e[tag=!Abian,tag=!InLabyrinth,distance=..7,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit] as @e[tag=AbianOverflux,type=armor_stand] at @s positioned ~ ~1.65 ~ facing entity @e[tag=!Abian,distance=..7,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,sort=nearest] eyes run function datapack:abian_functions/abianpassive5
execute as @e[tag=AbianOverflux,type=armor_stand] at @s run execute if entity @e[tag=!Abian,tag=!InLabyrinth,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,distance=..7] run scoreboard players add @s Timer3 1
execute as @e[tag=!Abian,tag=!InLabyrinth,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit] at @s unless entity @e[type=armor_stand,tag=AbianOverflux,distance=..7] run scoreboard players set @s AbianFluxLaser 0

execute as @e[tag=AbianOverflux,type=armor_stand,scores={Timer3=30..}] at @s run execute as @e[tag=!Abian,tag=!InLabyrinth,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,distance=..7] at @s run function datapack:damage1
scoreboard players set @e[tag=AbianOverflux,type=armor_stand,scores={Timer3=30..}] Timer3 0

scoreboard players add @e[type=armor_stand,tag=AbianOverflux] Timer2 1
execute as @e[type=armor_stand,tag=AbianOverflux,scores={Timer2=..130}] at @s run playsound minecraft:block.beacon.ambient neutral @a[distance=..50] ~ ~ ~ 1 1 1
execute as @e[type=armor_stand,tag=AbianOverflux,scores={Timer2=205..}] at @s run particle minecraft:poof ~ ~1.5 ~ 0.5 0.5 0.5 0.1 10
execute as @e[type=armor_stand,tag=AbianOverflux,scores={Timer2=205..}] at @s run playsound minecraft:block.beacon.deactivate neutral @a[distance=..50] ~ ~ ~ 2 2 1

kill @e[type=armor_stand,tag=AbianOverflux,scores={Timer2=205..}]


# Overflux (Buffed by Autism Awareness Day)
execute as @e[type=armor_stand,tag=AbianOverflux,scores={Timer2=1}] at @s if entity @p[tag=AbianMaxAutism] run tag @s add AbianOverfluxBuffed
execute as @e[type=armor_stand,tag=AbianOverflux,scores={Timer2=1}] at @s if entity @p[tag=AbianMaxAutism] at @s run tag @p[tag=AbianMaxAutism] remove AbianMaxAutism

execute as @e[type=armor_stand,tag=AbianOverfluxBuffed,scores={Timer2=1}] at @s run item replace entity @s armor.head with player_head{SkullOwner:{Id:[I;1843755688,-2735795,-1382316714,980272151],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODNlZDRjZTIzOTMzZTY2ZTA0ZGYxNjA3MDY0NGY3NTk5ZWViNTUzMDdmN2VhZmU4ZDkyZjQwZmIzNTIwODYzYyJ9fX0="}]}}}

execute as @e[type=armor_stand,tag=AbianOverfluxBuffed] at @s run function datapack:abian_functions/fluxbuffed


# - Rise -
execute as @p[tag=Abian,scores={Ability3CD=..299}] at @s run scoreboard players add @s Ability3CD 1
execute as @p[tag=Abian,scores={Ability3CD=300..}] run execute as @p[tag=Abian,scores={Basic_COS=1..},predicate=datapack:abian_items/rise] at @s run function datapack:abian_functions/riseusing


execute as @e[type=armor_stand,tag=AbianHydra] at @s run scoreboard players add @s Timer 1

execute as @e[type=armor_stand,tag=AbianHydra,scores={Timer=50}] at @s run function datapack:abian_functions/rise1

execute as @e[type=armor_stand,tag=AbianHydraFireball] at @s run scoreboard players add @s Timer 1
execute as @e[type=armor_stand,tag=AbianHydraFireball] at @s run tp @s ^ ^ ^1
execute as @e[type=armor_stand,tag=AbianHydraFireball,scores={Timer=30..}] at @s run function datapack:abian_functions/rise2

scoreboard players add @e[type=armor_stand,tag=AbianHydra] Timer2 1
execute as @e[type=armor_stand,tag=AbianHydra,scores={Timer2=200..}] at @s run function datapack:abian_functions/rise3

execute as @e[type=armor_stand,tag=AbianHydraFireball] at @s run particle dust 0.1 0.1 0.1 2 ^ ^1 ^-2 0 0 0 0 2
execute as @e[type=armor_stand,tag=AbianHydraFireball] at @s run particle minecraft:witch ^ ^1 ^-2 0 0 0 0 2
execute as @e[type=armor_stand,tag=AbianHydraFireball] at @s if entity @e[tag=!Abian,type=!arrow,tag=!InLabyrinth,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,distance=..2] at @s run function datapack:abian_functions/risedamage


# {ability3cd=10..} is to stop abian from instantly swapping to the hydra when you use rise
# Swap
execute as @p[tag=Abian,scores={Ability3CD=10..},predicate=datapack:abian_items/riseswap] at @s if entity @e[type=armor_stand,tag=AbianHydra] run execute as @p[tag=Abian,scores={Basic_COS=1..}] at @s run function datapack:abian_functions/riseswap

execute as @e[type=armor_stand,tag=HydraSwapPositionsWithAbian] at @s if entity @e[type=armor_stand,tag=AbianHydra,distance=..2] run kill @s


# Rise (Buffed by Autism Awareness Day)
execute as @e[type=armor_stand,tag=AbianHydra,scores={Timer2=1}] at @s if entity @p[tag=AbianMaxAutism] run tag @s add AbianHydraBuffed
execute as @e[type=armor_stand,tag=AbianHydra,scores={Timer2=1}] at @s if entity @p[tag=AbianMaxAutism] at @s run tag @p[tag=AbianMaxAutism] remove AbianMaxAutism

execute as @e[type=armor_stand,tag=AbianHydraBuffed] at @s run function datapack:abian_functions/riseparticles

execute as @e[type=armor_stand,tag=AbianHydraFireball,scores={Timer=1}] at @s if entity @e[type=armor_stand,tag=AbianHydraBuffed] run tag @s add AbianHydraFireballBuffed

execute as @e[type=armor_stand,tag=AbianHydraFireballBuffed] at @s run particle minecraft:reverse_portal ^ ^1 ^ 0 0.5 0 0 5

execute as @e[type=armor_stand,tag=AbianHydraFireballBuffed] at @s if entity @e[tag=!Abian,tag=!InLabyrinth,type=!arrow,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,distance=..2] run function datapack:abian_functions/risedamage2 
