# Ability CDs
title @s[tag=!KratosRage] actionbar ["",{"text":"Hook:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Rage Meter:","color":"dark_red"},{"text":" ","color":"dark_red"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"dark_red"},{"text":"/100","color":"dark_red"}]
title @s[tag=KratosRage] actionbar ["",{"text":"Hook:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"SPARTAN RAGE:","color":"dark_red","bold":true},{"text":" ","color":"dark_red"},{"score":{"name":"@s","objective":"kits.timer3"},"color":"dark_red","bold":true},{"text":"/100","color":"dark_red","bold":true}]

# Slash
#scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
scoreboard players set @s[scores={kits.criterion.death=1..}] kits.timer 0

execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..}] as @s[scores={kits.ability1CD=100..},predicate=kits:items/kratos/bladesofchaos] at @s run function kits:kratos/weapon1cos
execute as @e[type=armor_stand,tag=kratosblade] at @s run function kits:kratos/slashanimation

# Hook
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability2CD=100..},predicate=kits:items/kratos/bladesofchaos] at @s run function kits:kratos/weapon1shift
execute as @e[type=armor_stand,tag=kratoshook] at @s run function kits:kratos/hookanimation

# Spartan Rage
execute if entity @s[tag=Kratos,tag=!KratosRage,scores={kits.timer2=100..}] if score @s kits.criterion.attack matches 1.. at @s run function kits:kratos/spartanrageactivate
scoreboard players add @s[tag=!KratosRage,scores={kits.criterion.attack=1..}] kits.timer2 15
scoreboard players set @s[scores={kits.timer2=101..}] kits.timer2 100
execute as @s[tag=KratosRage] at @s run function kits:kratos/spartanrage
