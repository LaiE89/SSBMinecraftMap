# Ability CDs
title @p[tag=Vergil] actionbar ["",{"text":"Judgement Cut:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Vergil]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Force Edge:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Vergil]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Summoned Swords:","color":"dark_aqua"},{"text":" ","color":"gold"},{"score":{"name":"@p[tag=Vergil]","objective":"Ability3CD"},"color":"white"},{"text":" || "},{"text":"Devil Trigger:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Vergil]","objective":"Ability4CD"}}]

# Judgement Cut
scoreboard players add @p[tag=Vergil,scores={Ability1CD=..149}] Ability1CD 1
execute as @p[tag=Vergil,scores={Ability1CD=150..}] as @p[tag=Vergil,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Yamato\",\"italic\":false,\"color\":\"white\"}]"}}}}] at @s run function datapack:vergil_functions/weapon1cos

execute as @e[type=armor_stand,tag=judgementcut] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=judgementcutmiddle,limit=1]
execute as @p[tag=VergilJudgementCut] at @s run tp @s ~ ~ ~ facing entity @e[tag=judgementcutmiddle,limit=1,sort=nearest]

execute at @p[tag=VergilJudgementCut] run playsound minecraft:entity.player.attack.knockback neutral @a[distance=..15] ~ ~ ~ 3 2 1

execute at @p[tag=VergilJudgementCut,scores={Timer=1}] run particle minecraft:dust 0 0 5 1 ^ ^1 ^1 2 0 2 0 500
execute at @p[tag=VergilJudgementCut,scores={Timer=1}] run particle minecraft:sweep_attack ^ ^1 ^1 2 0 2 0 5
execute at @p[tag=VergilJudgementCut,scores={Timer=1}] positioned ^ ^1.5 ^1 run execute as @e[tag=!Vergil,tag=!InLabyrinth,distance=..4,type=!experience_orb,type=!armor_stand,type=!arrow,type=!firework_rocket,type=!item] at @s run function datapack:damage1

execute at @p[tag=VergilJudgementCut,scores={Timer=5}] run summon armor_stand ^-3 ^ ^6 {Tags:["judgementcut"],DisabledSlots:2096896,Glowing:1b,NoGravity:1b,Invisible:1,Invulnerable:1,NoBasePlate:1,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6574130}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:1462352}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1463928}}},{id:"minecraft:player_head",Damage:3,Count:1b,tag:{display:{Name:"{\"text\":\"Vergil\"}"},Enchantments:[{id:protection,lvl:2}],SkullOwner:{Id:[I;-1944059747,-4700758,-2128888949,-707270116],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiMjgwMzczMjJjMTk3ZjdhMDA4MmY4NzY1N2Y2OWIzNTFhODExNjdmMmVlZThiODlmOTllOGMzMWFkNzcxMSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:36}},{}]}
execute at @p[tag=VergilJudgementCut,scores={Timer=5}] run execute at @e[type=armor_stand,tag=judgementcut,limit=1] run particle minecraft:dust 0 0 5 1 ^ ^1.5 ^1 2 0 2 0 500
execute at @p[tag=VergilJudgementCut,scores={Timer=5}] run execute at @e[type=armor_stand,tag=judgementcut,limit=1] run particle minecraft:sweep_attack ^ ^1.5 ^1 2 0 2 0 5
execute at @p[tag=VergilJudgementCut,scores={Timer=5}] run execute at @e[type=armor_stand,tag=judgementcut,limit=1] positioned ^ ^1 ^1 run execute as @e[tag=!Vergil,distance=..4,tag=!InLabyrinth,type=!experience_orb,type=!armor_stand,type=!arrow,type=!firework_rocket,type=!item] at @s run function datapack:damage1

execute at @p[tag=VergilJudgementCut,scores={Timer=11}] run summon armor_stand ^3 ^ ^6 {Tags:["judgementcut"],DisabledSlots:2096896,Glowing:1b,NoGravity:1b,Invisible:1,Invulnerable:1,NoBasePlate:1,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6574130}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:1462352}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1463928}}},{id:"minecraft:player_head",Damage:3,Count:1b,tag:{display:{Name:"{\"text\":\"Vergil\"}"},Enchantments:[{id:protection,lvl:2}],SkullOwner:{Id:[I;-1944059747,-4700758,-2128888949,-707270116],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiMjgwMzczMjJjMTk3ZjdhMDA4MmY4NzY1N2Y2OWIzNTFhODExNjdmMmVlZThiODlmOTllOGMzMWFkNzcxMSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:36}},{}]}
execute at @p[tag=VergilJudgementCut,scores={Timer=11}] positioned ^2 ^0.5 ^4 run particle minecraft:dust 0 0 5 1 ^ ^1 ^1 2 0 2 0 500
execute at @p[tag=VergilJudgementCut,scores={Timer=11}] positioned ^2 ^0.5 ^4 run particle minecraft:sweep_attack ^ ^1 ^1 2 0 2 0 5
execute at @p[tag=VergilJudgementCut,scores={Timer=11}] positioned ^2 ^0.5 ^4 run execute as @e[tag=!Vergil,distance=..4,tag=!InLabyrinth,type=!experience_orb,type=!armor_stand,type=!arrow,type=!firework_rocket,type=!item] at @s run function datapack:damage1

scoreboard players add @p[tag=VergilJudgementCut] Timer 1
effect clear @p[tag=VergilJudgementCut,scores={Timer=20..}] slowness
effect clear @p[tag=VergilJudgementCut,scores={Timer=20..}] resistance
effect clear @p[tag=VergilJudgementCut,scores={Timer=20..}] weakness
effect clear @p[tag=VergilJudgementCut,scores={Timer=20..}] glowing
execute if entity @p[tag=VergilJudgementCut,scores={Timer=20..}] run kill @e[type=armor_stand,tag=judgementcut]
execute if entity @p[tag=VergilJudgementCut,scores={Timer=20..}] run kill @e[type=armor_stand,tag=judgementcutmiddle]
execute if entity @p[tag=VergilJudgementCut,scores={Timer=20..}] run tag @p[tag=Vergil] add VergilDash
tag @p[tag=VergilJudgementCut,scores={Timer=20..}] remove VergilJudgementCut
scoreboard players reset @p[tag=Vergil,scores={Timer=20..}] Timer

# Force Edge
scoreboard players add @p[tag=Vergil,scores={Ability2CD=..299}] Ability2CD 1
execute as @p[tag=Vergil,scores={Ability2CD=300..}] as @p[tag=Vergil,scores={COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Force Edge\",\"italic\":false,\"color\":\"gold\"}]"}}}}] at @s run function datapack:vergil_functions/weapon2cos

execute as @e[type=armor_stand,tag=forceedge,scores={Timer=..5},tag=!castedforceedge] at @s run tp @s ~ ~ ~ facing entity @p[tag=Vergil]
tag @e[type=armor_stand,tag=forceedge,scores={Timer=..5},tag=!castedforceedge] add castedforceedge
execute as @e[type=armor_stand,tag=forceedge,scores={Timer=..5}] at @s run tp @s ^ ^ ^-2

execute as @e[type=armor_stand,tag=forceedge] at @s run function datapack:vergil_functions/forceedge

execute as @e[type=armor_stand,tag=forceedge,scores={Timer=8..}] at @s run tp @s ~ ~ ~ ~30 ~
scoreboard players add @e[type=armor_stand,tag=forceedge] Timer 1
kill @e[type=armor_stand,tag=forceedge,scores={Timer=120..}]

# Summoned Sword
scoreboard players add @p[tag=Vergil,scores={Ability3CD=..149}] Ability3CD 1
execute as @p[tag=Vergil,scores={Ability3CD=150..},gamemode=!spectator] as @p[tag=Vergil,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Force Edge\",\"italic\":false,\"color\":\"gold\"}]"}}}}] at @s run function datapack:vergil_functions/weapon2shift

execute as @e[type=armor_stand,tag=summonedswords,scores={Timer=1}] at @s run tp @s ~ ~ ~ facing entity @p[tag=Vergil]
execute at @e[type=armor_stand,tag=summonedswords,limit=1,sort=nearest] run execute if entity @e[distance=..10,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Vergil,tag=!InLabyrinth] as @e[type=armor_stand,tag=summonedswords,limit=1,sort=nearest] at @s facing entity @e[distance=..10,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Vergil,tag=!InLabyrinth] feet run tp @s ^ ^ ^1.5

execute at @e[type=armor_stand,tag=summonedswords] run function datapack:vergil_functions/summonedsword

scoreboard players add @e[type=armor_stand,tag=summonedswords] Timer 1
kill @e[type=armor_stand,tag=summonedswords,scores={Timer=100..}]

# Devil Trigger
scoreboard players add @p[tag=Vergil,scores={Ability4CD=..699}] Ability4CD 1
execute as @p[tag=Vergil,scores={Ability4CD=700..}] as @p[tag=Vergil,scores={Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Yamato\",\"italic\":false,\"color\":\"white\"}]"}}}}] at @s run function datapack:vergil_functions/weapon1shift

execute at @p[tag=Vergil,tag=VergilDevilTrigger] run particle minecraft:dust 0 0 2 1 ~ ~1.5 ~ 0.5 1 0.5 1 2

scoreboard players add @p[tag=Vergil,tag=VergilDevilTrigger] Timer2 1
effect give @p[tag=VergilDevilTrigger] minecraft:speed 1 2 true
effect clear @p[tag=Vergil,scores={Timer2=300..}] minecraft:speed
execute at @p[tag=Vergil,scores={Timer2=300..}] run particle minecraft:dust 0 0 2 1 ~ ~1.5 ~ 0.5 1 0.5 1 500
execute at @p[tag=Vergil,scores={Timer2=300..}] run playsound minecraft:item.trident.thunder neutral @a[distance=..30] ~ ~ ~ 3 2 1
clear @p[tag=Vergil,scores={Timer2=300..}] minecraft:player_head{display:{Name:"{\"text\":\"Devil Trigger\"}"}}
replaceitem entity @p[tag=Vergil,scores={Timer2=300..}] armor.head minecraft:player_head{display:{Name:"{\"text\":\"Vergil\"}"},Enchantments:[{id:protection,lvl:2}],SkullOwner:{Id:[I;-1944059747,-4700758,-2128888949,-707270116],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiMjgwMzczMjJjMTk3ZjdhMDA4MmY4NzY1N2Y2OWIzNTFhODExNjdmMmVlZThiODlmOTllOGMzMWFkNzcxMSJ9fX0="}]}}} 1
tag @p[tag=Vergil,scores={Timer2=300..}] remove VergilDevilTrigger
scoreboard players reset @p[tag=Vergil,scores={Timer2=300..}] Timer2

execute as @p[tag=Vergil,tag=VergilDash] at @s run scoreboard players set @s RaycastTimer 0
execute as @p[tag=Vergil,tag=VergilDash] at @s run execute as @s at @s positioned ~ ~1.5 ~ run function datapack:vergil_functions/vergilpassive2

scoreboard players add @p[tag=Vergil,tag=VergilInvis] Timer3 1

replaceitem entity @p[tag=Vergil,tag=!VergilDevilTrigger,scores={Timer3=20..}] armor.head minecraft:player_head{display:{Name:"{\"text\":\"Vergil\"}"},Enchantments:[{id:protection,lvl:2}],SkullOwner:{Id:[I;-1944059747,-4700758,-2128888949,-707270116],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiMjgwMzczMjJjMTk3ZjdhMDA4MmY4NzY1N2Y2OWIzNTFhODExNjdmMmVlZThiODlmOTllOGMzMWFkNzcxMSJ9fX0="}]}}} 1
replaceitem entity @p[tag=Vergil,tag=VergilDevilTrigger,scores={Timer3=20..}] armor.head minecraft:player_head{display:{Name:"{\"text\":\"Devil Trigger\"}"},Enchantments:[{id:protection,lvl:2}],SkullOwner:{Id:[I;1927857700,-931839921,-1471013991,1714197496],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzU3ZGRkOGM5NGIyZmY1Y2YyZjUxODhmNDYxMmI1MjNmNTQzNGI5ZjE3MjYzYTY3ODExYTM5ZDg1NDA3NTQwNiJ9fX0="}]}}} 1
replaceitem entity @p[tag=Vergil,scores={Timer3=20..}] armor.chest leather_chestplate{display:{Name:'[{"text":"Vergil\'s Clothes","italic":false,"color":"dark_aqua"}]',color:1463928},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:10,Operation:0,UUID:[I;-120914,5113,113337,-10226],Slot:chest,Name:"generic.armor"}]} 1
replaceitem entity @p[tag=Vergil,scores={Timer3=20..}] armor.legs leather_leggings{display:{Name:'[{"text":"Vergil\'s Clothes","italic":false,"color":"dark_aqua"}]',color:1462352},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor_toughness",Amount:5,Operation:0,UUID:[I;-120914,14797,113451,-29594],Slot:legs,Name:"generic.armor_toughness"}]} 1
replaceitem entity @p[tag=Vergil,scores={Timer3=20..}] armor.feet leather_boots{display:{Name:'[{"text":"Vergil\'s Clothes","italic":false,"color":"dark_aqua"}]',color:8606770},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.03,Operation:0,UUID:[I;-120914,14750,113551,-29500],Slot:feet,Name:"generic.movement_speed"}]} 1
tag @p[tag=Vergil,scores={Timer3=20..}] remove VergilInvis
scoreboard players reset @p[tag=Vergil,scores={Timer3=20..}] Timer3

scoreboard players add @p[tag=Vergil,tag=VergilDash] Timer4 1
tag @p[tag=Vergil,scores={Timer4=20..}] remove VergilDash
scoreboard players reset @p[tag=Vergil,scores={Timer4=20..}] Timer4
