# Blade Mode
# Crescent Slice
# Sky High
# Gravity Control Shell
title @s[tag=!RaidenBladeMode] actionbar ["",{"text":"Blade Mode:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Raiden]","objective":"kits.ability1CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Crescent Slice:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Raiden]","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Sky High:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Raiden]","objective":"kits.ability3CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Stabbing Despair:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Raiden]","objective":"kits.ability4CD"},"color":"white"},{"text":"/150","color":"white"}]
title @s[tag=RaidenBladeMode] actionbar ["",{"text":"BLADE MODE ACTIVATED","color":"red"},{"text":" ","color":"white"},{"text":" || ","color":"white"},{"text":"Crescent Slice:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Raiden]","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Sky High:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Raiden]","objective":"kits.ability3CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Stabbing Despair:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Raiden]","objective":"kits.ability4CD"},"color":"white"},{"text":"/150","color":"white"}]

# Blade Mode
scoreboard players add @s[scores={kits.ability1CD=..149}] kits.ability1CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/raiden/murasama] as @s[scores={kits.ability1CD=150..}] at @s run function kits:char/raiden/weapon1cos
execute as @s[tag=RaidenBladeMode] at @s run function kits:char/raiden/blademode

# Crescent
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/raiden/murasama] as @s[scores={kits.ability2CD=100..}] unless entity @s[nbt={active_effects:[{id:"minecraft:levitation"}]}] run function kits:char/raiden/weapon1shift
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/raiden/murasama] as @s[scores={kits.ability2CD=100..},nbt={active_effects:[{id:"minecraft:levitation"}]}] at @s run function kits:char/raiden/weapon1shift2
execute as @s[tag=RaidenAirCrescent] at @s run function kits:char/raiden/crescentair

# Sky High
scoreboard players add @s[scores={kits.ability3CD=..149}] kits.ability3CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/raiden/sai] as @s[scores={kits.ability3CD=150..}] at @s run function kits:char/raiden/weapon2cos

# Stabbing Despair
scoreboard players add @s[scores={kits.ability4CD=..149}] kits.ability4CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/raiden/sai] as @s[scores={kits.ability4CD=150..}] at @s run function kits:char/raiden/weapon2shift

execute as @e[type=area_effect_cloud,tag=raidensai] at @s run function kits:char/raiden/saiprojectile

execute if entity @e[tag=RaidenHooked] as @e[tag=RaidenHooked] at @s run function kits:char/raiden/saipull
