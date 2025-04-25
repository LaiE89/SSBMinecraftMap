title @s[tag=Garchomp] actionbar ["",{"text":"Stone Edge:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Swords Dance:","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Dragon Rush:","color":"dark_blue"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Earthquake:","color":"#cccc99"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Full Restore:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability5CD"},"color":"white"},{"text":"/2000","color":"white"}]
title @s[tag=Lucario] actionbar ["",{"text":"Extreme Speed:","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Bullet Punch:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Close Combat:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Aura Sphere:","color":"#FF8A14"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Full Restore:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability5CD"},"color":"white"},{"text":"/2000","color":"white"}]
title @s[tag=Roserade] actionbar ["",{"text":"Sludge Bomb:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Stun Spore:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Leech Seed:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Sleep Powder:","color":"light_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Full Restore:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability5CD"},"color":"white"},{"text":"/2000","color":"white"}]

# Hold shift stuff
scoreboard players set @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff 0
scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1

scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
scoreboard players add @s[scores={kits.ability3CD=..199}] kits.ability3CD 1
scoreboard players add @s[scores={kits.ability4CD=..199}] kits.ability4CD 1

execute as @s[tag=CynthiaJustSwitched] at @s run function kits:char/cynthia/justswitched

# Garchomp
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/cynthia/garchomp1] as @s[scores={kits.ability1CD=100..}] at @s run function kits:char/cynthia/weapon1cos

execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/cynthia/garchomp1] as @s[scores={kits.ability2CD=100..}] at @s run function kits:char/cynthia/weapon1shift
execute if entity @s[tag=GarchompDance] at @s run function kits:char/cynthia/garchomp/swordsdancecharge

execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/cynthia/garchomp2] as @s[scores={kits.ability3CD=200..}] at @s run function kits:char/cynthia/weapon2cos
execute if entity @s[tag=GarchompDragonRush] at @s run function kits:char/cynthia/garchomp/dragonrushing

execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/cynthia/garchomp2] as @s[scores={kits.ability4CD=200..}] at @s run function kits:char/cynthia/weapon2shift
execute if entity @s[tag=GarchompEarthquake,gamemode=!spectator] at @s run function kits:char/cynthia/garchomp/earthquaking

# Lucario
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/cynthia/lucario1] as @s[scores={kits.ability1CD=100..}] at @s run function kits:char/cynthia/weapon1cos

execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/cynthia/lucario1] as @s[scores={kits.ability2CD=100..}] at @s run function kits:char/cynthia/weapon1shift

execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/cynthia/lucario2] as @s[scores={kits.ability3CD=200..}] at @s run function kits:char/cynthia/weapon2cos
execute at @s[tag=LucarioCloseCombat,gamemode=!spectator] run function kits:char/cynthia/lucario/closecombateffects

execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/cynthia/lucario2] as @s[scores={kits.ability4CD=200..}] at @s run function kits:char/cynthia/weapon2shift
execute as @e[type=area_effect_cloud,tag=LucarioAuraSphere] at @s run function kits:char/cynthia/lucario/aurasphereanimation

# Roserade
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/cynthia/roserade1] as @s[scores={kits.ability1CD=100..}] at @s run function kits:char/cynthia/weapon1cos
execute as @e[type=armor_stand,tag=RoseradeBomb] at @s run function kits:char/cynthia/roserade/sludgebombeffects
execute as @e[type=area_effect_cloud,tag=RoseradeSludgeLocation] at @s run function kits:char/cynthia/roserade/sludgebombfield

execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/cynthia/roserade1] as @s[scores={kits.ability2CD=100..}] at @s run function kits:char/cynthia/weapon1shift

execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/cynthia/roserade2] as @s[scores={kits.ability3CD=200..}] at @s run function kits:char/cynthia/weapon2cos
execute as @e[type=armor_stand,tag=RoseradeSeeds] at @s run function kits:char/cynthia/roserade/leechseedeffects
execute if entity @e[tag=RoseradeSeeded] as @e[tag=RoseradeSeeded] at @s run function kits:char/cynthia/roserade/leechseeddamage
execute if entity @e[type=area_effect_cloud,tag=RoseradeHealing] as @e[type=area_effect_cloud,tag=RoseradeHealing] at @s run function kits:char/cynthia/roserade/leechseedhealing

execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/cynthia/roserade2] as @s[scores={kits.ability4CD=200..}] at @s run function kits:char/cynthia/weapon2shift

# Full Restore
scoreboard players add @s[scores={kits.ability5CD=..1999}] kits.ability5CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},tag=!GarchompDance,predicate=kits:items/cynthia/traineritems] as @s[scores={kits.ability5CD=2000..}] at @s run function kits:char/cynthia/weapon3cos

# Switch
scoreboard players add @s[scores={kits.ability6CD=..19}] kits.ability6CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},tag=!GarchompDance,tag=!GarchompDragonRush,tag=!GarchompEarthquake,tag=!LucarioCloseCombat,tag=!LucarioAuraSphere,predicate=kits:items/cynthia/traineritems] as @s[scores={kits.ability6CD=20..}] at @s run function kits:char/cynthia/weapon3shift

# Lucario Passive
effect clear @s[tag=Lucario,tag=!LucarioCloseCombat,tag=!LucarioAuraSphere,tag=!CynthiaJustSwitched] minecraft:slowness

# End Hold Shift stuff
scoreboard players reset @s[scores={kits.criterion.shiftOff=2..}] kits.criterion.shiftOff
