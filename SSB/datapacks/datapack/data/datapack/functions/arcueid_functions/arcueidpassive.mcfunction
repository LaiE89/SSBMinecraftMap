# Ability CDs
title @p[tag=Arcueid,tag=!ArcueidRed] actionbar ["",{"text":"Rip Apart:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Arcueid]","objective":"Ability1CD"}},{"text":" || "},{"text":"Warcueid:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Arcueid]","objective":"Ability2CD"}},{"text":" || "},{"text":"Vacuum:","color":"light_purple"},{"text":" "},{"score":{"name":"@p[tag=Arcueid]","objective":"Ability3CD"}},{"text":" || "},{"text":"Chains:","color":"aqua"},{"text":" "},{"score":{"name":"@p[tag=Arcueid]","objective":"Ability4CD"}}]
title @p[tag=Arcueid,tag=ArcueidRed] actionbar ["",{"text":"Rip Apart:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Arcueid]","objective":"Ability1CD"}},{"text":" || "},{"text":"Warcueid Active:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Arcueid]","objective":"Timer"},"color":"dark_red"},{"text":" || "},{"text":"Vacuum:","color":"light_purple"},{"text":" "},{"score":{"name":"@p[tag=Arcueid]","objective":"Ability3CD"}},{"text":" || "},{"text":"Chains:","color":"aqua"},{"text":" "},{"score":{"name":"@p[tag=Arcueid]","objective":"Ability4CD"}}]

# Rip Apart
scoreboard players add @p[tag=Arcueid,scores={Basic_Attack=1..}] Ability1CD 30
scoreboard players set @p[tag=Arcueid,scores={Ability1CD=101..}] Ability1CD 100

scoreboard players add @e[tag=Arcueid,scores={Ability1CD=..99}] Ability1CD 1
execute as @p[gamemode=!spectator,tag=Arcueid,scores={Basic_COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Arcueid\'s Claws","italic":false,"color":"dark_purple"}]'}}}}] as @p[tag=Arcueid,scores={Ability1CD=100..}] at @s run function datapack:arcueid_functions/weapon1cos

# Red Arcueid
scoreboard players add @e[tag=Arcueid,scores={Ability2CD=..349}] Ability2CD 1
execute as @p[gamemode=!spectator,tag=Arcueid,scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Arcueid\'s Claws","italic":false,"color":"dark_purple"}]'}}}}] as @p[tag=Arcueid,scores={Ability2CD=350..}] at @s run function datapack:arcueid_functions/weapon1shift

effect give @p[tag=ArcueidRed,scores={Basic_Attack=1..}] regeneration 1 3 true

scoreboard players add @p[tag=ArcueidRed] Timer 1
execute at @p[tag=ArcueidRed,scores={Timer=150..}] run playsound minecraft:entity.cat.hiss neutral @a[distance=..20] ~ ~ ~ 3 2 1
execute at @p[tag=ArcueidRed,scores={Timer=150..}] run particle minecraft:flash ~ ~1 ~
clear @p[tag=ArcueidRed,scores={Timer=150..}] minecraft:player_head{display:{Name:"{\"text\":\"Red Arcueid\"}"}}
item replace entity @p[tag=ArcueidRed,scores={Timer=150..}] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Arcueid\"}"},Enchantments:[{id:protection,lvl:3}],SkullOwner:{Id:[I;839023935,-1429911372,-1641760510,1816825842],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTlhZmZlMWVhYzEwNGFkOGRkYmVmODhhYWFjNWYwYTA3NmMzZTNjNWU4ODZlMDc0ZmE1OThkMjQzZmMxNDdiOCJ9fX0="}]}}} 1
tag @p[tag=ArcueidRed,scores={Timer=150..}] remove ArcueidRed
scoreboard players reset @p[tag=Arcueid,scores={Timer=150..}] Timer

# Vacuum
scoreboard players add @e[tag=Arcueid,scores={Ability3CD=..499}] Ability3CD 1
execute as @p[gamemode=!spectator,tag=Arcueid,scores={Basic_COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Marble Phantasm","italic":false,"color":"dark_purple"}]'}}}}] as @p[tag=Arcueid,scores={Ability3CD=500..}] at @s run function datapack:arcueid_functions/weapon2cos

execute as @e[type=area_effect_cloud,tag=ArcueidVacuum,tag=!facingArcueidVacuum] at @s run tp @s ~ ~ ~ facing entity @p[tag=Arcueid]
tag @e[type=area_effect_cloud,tag=ArcueidVacuum,tag=!facingArcueidVacuum] add facingArcueidVacuum
execute as @e[type=area_effect_cloud,tag=ArcueidVacuum,tag=ArcueidVacuumThrown] at @s run tp @s ^ ^ ^-1
scoreboard players add @e[type=area_effect_cloud,tag=ArcueidVacuum] Timer 1
tag @e[type=area_effect_cloud,tag=ArcueidVacuum,scores={Timer=2}] remove ArcueidVacuumThrown
execute as @e[type=area_effect_cloud,tag=ArcueidVacuum,scores={Timer=5..}] at @s run tp @s ~ ~ ~ ~50 ~

execute as @e[type=area_effect_cloud,tag=ArcueidVacuum] at @s run function datapack:arcueid_functions/vacuum

# Chains
scoreboard players add @e[tag=Arcueid,scores={Ability4CD=..999}] Ability4CD 1
execute as @p[gamemode=!spectator,tag=Arcueid,scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Marble Phantasm","italic":false,"color":"dark_purple"}]'}}}}] as @p[tag=Arcueid,scores={Ability4CD=1000..}] at @s run function datapack:arcueid_functions/weapon2shift

execute if entity @e[type=armor_stand,tag=ArcueidChains] run scoreboard players add @p[tag=Arcueid] Timer2 1
execute at @e[type=armor_stand,tag=ArcueidChains] run function datapack:arcueid_functions/chainparticles

execute if entity @p[tag=Arcueid,scores={Timer2=5}] as @e[tag=ArcueidChains,type=armor_stand] at @s run tp @e[tag=ArcueidChained] ~ ~1.5 ~
execute if entity @p[tag=Arcueid,scores={Timer2=6..}] as @e[tag=ArcueidChains,type=armor_stand] at @s run tp @e[tag=ArcueidChained] ~ ~1.5 ~

execute if entity @p[tag=Arcueid,scores={Timer2=50..}] run tag @e[tag=ArcueidChained] remove ArcueidChained
execute if entity @p[tag=Arcueid,scores={Timer2=50..}] run kill @e[type=armor_stand,tag=ArcueidChains]
scoreboard players reset @p[tag=Arcueid,scores={Timer2=50..}] Timer2
