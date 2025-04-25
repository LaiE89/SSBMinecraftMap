# Ability CDs
title @s[tag=!SaberStrikeAir,tag=!SaberStrikeAir2,tag=!SaberExcalibur] actionbar ["",{"text":"Strike Air:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/600","color":"white"}]
title @s[tag=SaberExcalibur] actionbar ["",{"text":"Strike Air:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur Time:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.timer3"},"color":"dark_aqua"},{"text":"/200","color":"dark_aqua"}]
title @s[tag=SaberStrikeAir,tag=!SaberStrikeAir2] actionbar ["",{"text":"Strike Air 2:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.timer"},"color":"aqua"},{"text":"/70","color":"aqua"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/600","color":"white"}]
title @s[tag=SaberStrikeAir2,tag=!SaberStrikeAir] actionbar ["",{"text":"Strike Air 3:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"aqua"},{"text":"/70","color":"aqua"},{"text":" || ","color":"white"},{"text":"Valor:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Avalon:","color":"dark_green"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Excalibur:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/600","color":"white"}]

# Strike Air
scoreboard players add @s[scores={kits.ability1CD=..149}] kits.ability1CD 1
execute as @s[scores={kits.ability1CD=150..},predicate=kits:items/saber/air] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] at @s run function kits:char/saber/weapon1shift

execute at @s[tag=SaberStrikeAir] run particle falling_dust{block_state:"minecraft:white_concrete"} ^-0.4 ^1.2 ^0.75 0 0.2 0 0 20 force
execute at @s[tag=SaberStrikeAir2] run particle falling_dust{block_state:"minecraft:light_blue_concrete"} ^-0.4 ^1.2 ^0.75 0 0.2 0 0 20 force

execute as @s[tag=SaberStrikeAir,scores={kits.timer=10..}] as @s[tag=SaberStrikeAir,gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/saber/air] at @s run function kits:char/saber/strikeair
execute as @s[scores={kits.timer=10..}] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/saber/air] at @s run scoreboard players reset @s kits.timer

scoreboard players add @s[tag=SaberStrikeAir,tag=Saber] kits.timer 1
tag @s[tag=SaberStrikeAir,scores={kits.timer=70..}] remove SaberStrikeAir
scoreboard players reset @s[scores={kits.timer=70..}] kits.timer

execute as @s[tag=SaberStrikeAir2,scores={kits.timer2=10..}] as @s[tag=SaberStrikeAir2,gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/saber/air] at @s run function kits:char/saber/strikeair2
execute as @s[scores={kits.timer2=10..}] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/saber/air] at @s run scoreboard players reset @s kits.timer2

scoreboard players add @s[tag=SaberStrikeAir2] kits.timer2 1
tag @s[tag=SaberStrikeAir2,scores={kits.timer2=70..}] remove SaberStrikeAir2
scoreboard players reset @s[scores={kits.timer2=70..}] kits.timer2

# Valor
scoreboard players add @s[scores={kits.ability2CD=..149}] kits.ability2CD 1
execute as @s[scores={kits.ability2CD=150..},predicate=kits:items/saber/air] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/saber/weapon1cos

# Avalon
scoreboard players add @s[scores={kits.ability3CD=..299}] kits.ability3CD 1
execute as @s[scores={kits.ability3CD=300..},predicate=kits:items/saber/avalon] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/saber/weapon2cos

# Excalibur
scoreboard players add @s[scores={kits.ability4CD=..599}] kits.ability4CD 1
execute as @s[scores={kits.ability4CD=600..},predicate=kits:items/saber/avalon] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] at @s run function kits:char/saber/weapon2shift

execute as @s[scores={kits.timer3=20..}] as @s[gamemode=!spectator,tag=SaberExcalibur,scores={kits.criterion.shift=1..},predicate=kits:items/saber/real_excalibur] at @s run function kits:char/saber/excaliburuse

scoreboard players add @s[tag=SaberExcalibur,tag=Saber] kits.timer3 1
execute as @s[tag=SaberExcalibur,tag=Saber,scores={kits.timer3=200..}] at @s run function kits:char/saber/excaliburdone

execute as @e[type=area_effect_cloud,tag=SaberExcalibur] at @s run function kits:char/saber/excaliburprojectile
