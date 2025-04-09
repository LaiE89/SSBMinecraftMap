# Ability CDs
title @s[tag=!SaberStrikeAir,tag=!SaberStrikeAir2,tag=!SaberExcalibur] actionbar ["",{"text":"Strike Air:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/600","color":"white"}]
title @s[tag=SaberExcalibur] actionbar ["",{"text":"Strike Air:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur Time:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.timer3"},"color":"dark_aqua"},{"text":"/200","color":"dark_aqua"}]
title @s[tag=SaberStrikeAir,tag=!SaberStrikeAir2] actionbar ["",{"text":"Strike Air 2:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.timer"},"color":"aqua"},{"text":"/60","color":"aqua"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/600","color":"white"}]
title @s[tag=SaberStrikeAir2,tag=!SaberStrikeAir] actionbar ["",{"text":"Strike Air 3:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"aqua"},{"text":"/60","color":"aqua"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/600","color":"white"}]

# Strike Air
scoreboard players add @s[scores={kits.ability1CD=..149}] kits.ability1CD 1
execute as @s[scores={kits.ability1CD=150..},predicate=kits:items/saber/air] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] at @s run function kits:saber/weapon1shift

execute at @s[tag=SaberStrikeAir] run particle falling_dust{block_state:"minecraft:white_concrete"} ^-0.4 ^1.2 ^0.75 0 0.2 0 0 20 force
execute at @s[tag=SaberStrikeAir2] run particle falling_dust{block_state:"minecraft:light_blue_concrete"} ^-0.4 ^1.2 ^0.75 0 0.2 0 0 20 force

execute as @s[tag=SaberStrikeAir,scores={kits.timer=15..}] as @s[tag=SaberStrikeAir,gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/saber/air] at @s run function kits:saber/strikeair
execute as @s[scores={kits.timer=15..}] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/saber/air] at @s run scoreboard players reset @s kits.timer

scoreboard players add @s[tag=SaberStrikeAir,tag=Saber] kits.timer 1
tag @s[tag=SaberStrikeAir,scores={kits.timer=60..}] remove SaberStrikeAir
scoreboard players reset @s[scores={kits.timer=60..}] kits.timer

execute as @s[tag=SaberStrikeAir2,scores={kits.timer2=15..}] as @s[tag=SaberStrikeAir2,gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/saber/air] at @s run function kits:saber/strikeair2
execute as @s[scores={kits.timer2=15..}] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/saber/air] at @s run scoreboard players reset @s kits.timer2

scoreboard players add @s[tag=SaberStrikeAir2] kits.timer2 1
tag @s[tag=SaberStrikeAir2,scores={kits.timer2=60..}] remove SaberStrikeAir2
scoreboard players reset @s[scores={kits.timer2=60..}] kits.timer2

# Valor
scoreboard players add @s[scores={kits.ability2CD=..149}] kits.ability2CD 1
execute as @s[scores={kits.ability2CD=150..},predicate=kits:items/saber/avalon] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:saber/weapon2cos

# Avalon
scoreboard players add @s[scores={kits.ability3CD=..299}] kits.ability3CD 1
execute as @s[scores={kits.ability3CD=300..},predicate=kits:items/saber/avalon] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] at @s run function kits:saber/weapon2shift

# Excalibur
scoreboard players add @s[scores={kits.ability4CD=..599}] kits.ability4CD 1
execute as @s[scores={kits.ability4CD=600..},predicate=kits:items/saber/excalibur] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:saber/weapon3cos

execute as @s[scores={kits.timer3=20..}] as @s[gamemode=!spectator,tag=SaberExcalibur,scores={kits.criterion.shift=1..},predicate=kits:items/saber/real_excalibur] at @s run function kits:saber/excaliburuse

scoreboard players add @s[tag=SaberExcalibur,tag=Saber] kits.timer3 1
clear @s[tag=SaberExcalibur,scores={kits.timer3=200..}] iron_sword[custom_name={"color":"aqua","italic":false,"text":"Excalibur"}]
give @s[tag=SaberExcalibur,scores={kits.timer3=200..}] iron_sword[custom_name={"color":"dark_aqua","italic":false,"text":"Invisible Air"},lore=[[""],[{"color":"red","italic":false,"text":"Strike Air:"},{"color":"dark_purple","text":" "},{"color":"yellow","text":"SHIFT"}],{"color":"gray","italic":false,"text":"You can shift 3 times everytime"},{"color":"gray","italic":false,"text":"this ability is casted. The first"},{"color":"gray","italic":false,"text":"shift propels you forward and"},{"color":"gray","italic":false,"text":"damages nearby enemies. The"},{"color":"gray","italic":false,"text":"second shift does the same as"},{"color":"gray","italic":false,"text":"the first shift. The third"},{"color":"gray","italic":false,"text":"shift knocks enemies up and"},{"color":"gray","italic":false,"text":"deals damage."}],unbreakable={},custom_model_data={floats:[21]},custom_data={KitItem:1b},attribute_modifiers=[{id:"damage.mainhand.saber",type:"attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{id:"speed.mainhand.saber",type:"attack_speed",amount:20,operation:"add_value",slot:"mainhand"}]] 1
tag @s[tag=SaberExcalibur,scores={kits.timer3=200..}] remove SaberExcalibur
scoreboard players reset @s[scores={kits.timer3=200..}] kits.timer3

execute as @e[type=area_effect_cloud,tag=SaberExcalibur] at @s run function kits:saber/excaliburprojectile
