# Ability CDs
title @s[tag=!LuffyGear] actionbar ["",{"text":"Haki:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Luffy]","objective":"kits.timer2"},"color":"green"},{"text":"/100","color":"green"},{"text":" || ","color":"white"},{"text":"Pistol:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Luffy]","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Dash:","color":"yellow"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Luffy]","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || "},{"text":"Gatling:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Luffy]","objective":"kits.ability3CD"}},{"text":"/200","color":"white"},{"text":" || "},{"text":"Grab:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Luffy]","objective":"kits.ability4CD"}},{"text":"/200","color":"white"}]
title @s[tag=LuffyGear] actionbar ["",{"text":"Gear 2nd Active:","color":"green"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Luffy]","objective":"kits.timer3"},"color":"green"},{"text":"/300","color":"green"},{"text":" || ","color":"white"},{"text":"Pistol:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Luffy]","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Dash:","color":"yellow"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Luffy]","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || "},{"text":"Gatling:","color":"dark_red"},{"text":" "},{"score":{"name":"@p[tag=Luffy]","objective":"kits.ability3CD"}},{"text":"/200","color":"white"},{"text":" || "},{"text":"Grab:","color":"red"},{"text":" "},{"score":{"name":"@p[tag=Luffy]","objective":"kits.ability4CD"}},{"text":"/200","color":"white"}]

# Haki
function kits:char/luffy/haki/haki 

# Pistol
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability1CD=100..},predicate=kits:items/luffy/fist] at @s run function kits:char/luffy/weapon1shift

scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] Shift
scoreboard players reset @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff

scoreboard players add @s[scores={kits.criterion.shift=1..},tag=LuffyUsingPistol] kits.criterion.shiftOn 1
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOn
execute as @s[scores={kits.criterion.shiftOn=1}] at @s rotated ~ 0 run tp @e[type=area_effect_cloud,tag=ChargingLuffyPistol] ^ ^ ^-0.5 facing entity @p[tag=Luffy]
execute at @s[scores={kits.criterion.shiftOn=2..}] run function kits:char/luffy/pistol/charging

execute as @s[scores={kits.criterion.shiftOn=40..},tag=LuffyUsingPistol] at @s run function kits:char/luffy/pistol/shootingpistol
execute as @s[scores={kits.criterion.shiftOff=3..},tag=LuffyUsingPistol] at @s run function kits:char/luffy/pistol/shootingpistol
execute as @e[type=area_effect_cloud,tag=LuffyPistol] at @s run function kits:char/luffy/pistol/pistol

scoreboard players reset @s[scores={kits.criterion.shiftOn=40..}] kits.criterion.shiftOn
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOff

# Dash
execute at @s run function kits:generic/inputs/wasd/main
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability2CD=100..},predicate=kits:items/luffy/fist] at @s run function kits:char/luffy/weapon1cos

# Gatling
scoreboard players add @s[scores={kits.ability3CD=..199}] kits.ability3CD 1
execute as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability3CD=200..},predicate=kits:items/luffy/skills] at @s run function kits:char/luffy/weapon2cos
execute as @s[tag=LuffyGatling] at @s run function kits:char/luffy/gatling

# Grab
scoreboard players add @s[scores={kits.ability4CD=..199}] kits.ability4CD 1
execute as @p[gamemode=!spectator,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability4CD=200..},predicate=kits:items/luffy/skills] at @s run function kits:char/luffy/weapon2shift
execute as @e[type=area_effect_cloud,tag=LuffyGrab] at @s run function kits:char/luffy/grab/grabprojectile
