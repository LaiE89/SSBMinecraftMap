# Ability CDs
title @p[tag=Saber,tag=!SaberStrikeAir,tag=!SaberStrikeAir2,tag=!SaberExcalibur] actionbar ["",{"text":"Strike Air:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Saber]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Saber]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Saber]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Saber]","objective":"Ability4CD"},"color":"white"}]
title @p[tag=Saber,tag=SaberExcalibur] actionbar ["",{"text":"Strike Air:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Saber]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Saber]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Saber]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur Time:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Saber]","objective":"Timer3"},"color":"dark_aqua"},{"text":"/200","color":"dark_aqua"}]
title @p[tag=SaberStrikeAir,tag=!SaberStrikeAir2] actionbar ["",{"text":"Strike Air 2:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Saber]","objective":"Timer"},"color":"aqua"},{"text":"/60","color":"aqua"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Saber]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Saber]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Saber]","objective":"Ability4CD"},"color":"white"}]
title @p[tag=SaberStrikeAir2,tag=!SaberStrikeAir] actionbar ["",{"text":"Strike Air 3:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Saber]","objective":"Timer2"},"color":"aqua"},{"text":"/60","color":"aqua"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Saber]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Saber]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Saber]","objective":"Ability4CD"},"color":"white"}]

# Strike Air
scoreboard players add @p[tag=Saber,scores={Ability1CD=..149}] Ability1CD 1
execute as @p[tag=Saber,scores={Ability1CD=150..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{display:{Name:'[{"text":"Invisible Air","italic":false,"color":"dark_aqua"}]'}}}}] as @p[tag=Saber,gamemode=!spectator,scores={Basic_Shift=1..}] at @s run function datapack:saber_functions/weapon1shift

execute at @p[tag=Saber,tag=SaberStrikeAir] run particle minecraft:falling_dust minecraft:white_concrete ^-0.4 ^1.2 ^0.75 0 0.2 0 0 20
execute at @p[tag=Saber,tag=SaberStrikeAir2] run particle minecraft:falling_dust minecraft:light_blue_concrete ^-0.4 ^1.2 ^0.75 0 0.2 0 0 20

execute as @p[tag=SaberStrikeAir,scores={Timer=15..}] as @p[tag=SaberStrikeAir,gamemode=!spectator,scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{display:{Name:'[{"text":"Invisible Air","italic":false,"color":"dark_aqua"}]'}}}}] at @s run function datapack:saber_functions/strikeair
execute as @p[scores={Timer=15..}] as @p[gamemode=!spectator,scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{display:{Name:'[{"text":"Invisible Air","italic":false,"color":"dark_aqua"}]'}}}}] at @s run scoreboard players reset @s Timer

scoreboard players add @p[tag=SaberStrikeAir,tag=Saber] Timer 1
tag @p[tag=SaberStrikeAir,tag=Saber,scores={Timer=60..}] remove SaberStrikeAir
scoreboard players reset @p[tag=Saber,scores={Timer=60..}] Timer

execute as @p[tag=SaberStrikeAir2,scores={Timer2=15..}] as @p[tag=SaberStrikeAir2,gamemode=!spectator,scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{display:{Name:'[{"text":"Invisible Air","italic":false,"color":"dark_aqua"}]'}}}}] at @s run function datapack:saber_functions/strikeair2
execute as @p[scores={Timer2=15..}] as @p[gamemode=!spectator,scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{display:{Name:'[{"text":"Invisible Air","italic":false,"color":"dark_aqua"}]'}}}}] at @s run scoreboard players reset @s Timer2

scoreboard players add @p[tag=Saber,tag=SaberStrikeAir2] Timer2 1
tag @p[tag=SaberStrikeAir2,tag=Saber,scores={Timer2=60..}] remove SaberStrikeAir2
scoreboard players reset @p[tag=Saber,scores={Timer2=60..}] Timer2

# Valor
scoreboard players add @p[tag=Saber,scores={Ability2CD=..149}] Ability2CD 1
execute as @p[tag=Saber,scores={Ability2CD=150..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Avalon","italic":false,"color":"dark_aqua"}]'}}}}] as @p[tag=Saber,scores={Basic_COS=1..}] at @s run function datapack:saber_functions/weapon2cos

# Avalon
scoreboard players add @p[tag=Saber,scores={Ability3CD=..299}] Ability3CD 1
execute as @p[tag=Saber,scores={Ability3CD=300..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Avalon","italic":false,"color":"dark_aqua"}]'}}}}] as @p[tag=Saber,gamemode=!spectator,scores={Basic_Shift=1..}] at @s run function datapack:saber_functions/weapon2shift

# Excalibur
scoreboard players add @p[tag=Saber,scores={Ability4CD=..599}] Ability4CD 1
execute as @p[tag=Saber,scores={Ability4CD=600..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Excalibur","italic":false,"color":"aqua"}]'}}}}] as @p[tag=Saber,scores={Basic_COS=1..}] at @s run function datapack:saber_functions/weapon3cos

execute as @p[tag=Saber,scores={Timer3=20..}] as @p[gamemode=!spectator,tag=Saber,tag=SaberExcalibur,scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{display:{Name:'[{"text":"Excalibur","italic":false,"color":"aqua"}]'}}}}] at @s run function datapack:saber_functions/excaliburuse

scoreboard players add @p[tag=SaberExcalibur,tag=Saber] Timer3 1
clear @p[tag=Saber,tag=SaberExcalibur,scores={Timer3=200..}] iron_sword{display:{Name:'[{"text":"Excalibur","italic":false,"color":"aqua"}]'}}
give @p[tag=Saber,tag=SaberExcalibur,scores={Timer3=200..}] iron_sword{display:{Name:'[{"text":"Invisible Air","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Strike Air:","italic":false,"color":"red"},{"text":" ","color":"dark_purple"},{"text":"SHIFT","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"You can shift 3 times everytime","italic":false,"color":"gray"}]','[{"text":"this ability is casted. The first","italic":false,"color":"gray"}]','[{"text":"shift propels you forward and","italic":false,"color":"gray"}]','[{"text":"damages nearby enemies. The","italic":false,"color":"gray"}]','[{"text":"second shift does the same as","italic":false,"color":"gray"}]','[{"text":"the first shift.The third","italic":false,"color":"gray"}]','[{"text":"shift knocks enemies up and","italic":false,"color":"gray"}]','[{"text":"deals damage.","italic":false,"color":"gray"}]']},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-12075,2147,14233,-4294],Slot:mainhand,Name:"generic.attack_damage"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-12075,2147,14233,-4294],Slot:mainhand,Name:"generic.attack_speed"}],CustomModelData:21} 1
tag @p[tag=SaberExcalibur,tag=Saber,scores={Timer3=200..}] remove SaberExcalibur
scoreboard players reset @p[tag=Saber,scores={Timer3=200..}] Timer3

execute as @e[type=area_effect_cloud,tag=SaberExcalibur,tag=!castedSaberExcalibur] at @s run tp @s ~ ~ ~ facing entity @p[tag=Saber]
tag @e[type=area_effect_cloud,tag=SaberExcalibur,tag=!castedSaberExcalibur] add castedSaberExcalibur
execute as @e[type=area_effect_cloud,tag=SaberExcalibur] at @s run tp @s ^ ^ ^-1.5
execute as @e[type=area_effect_cloud,tag=SaberExcalibur] at @s run function datapack:saber_functions/excaliburparticles