## Ability Display
title @s actionbar ["",{"text":"Swing: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Throw: ","color":"light_purple"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Rounds: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.timer"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"white"}]

## Cooldowns
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
scoreboard players add @s[scores={kits.ability3CD=..99}] kits.ability3CD 1

## Execute at Entities Related to Item
# Bat
execute as @e[tag=JacketBatSwing,type=area_effect_cloud] at @s run function kits:char/jacket/bat/swing/main
execute as @e[tag=JacketBatSwingDeflectedProjectile] at @s run function kits:char/jacket/bat/swing/deflect/deflected_main

# Throw
execute as @e[tag=JacketThrowItemTasks,type=area_effect_cloud] at @s run function kits:char/jacket/throw/tasks_main
execute as @e[tag=JacketStun] at @s run function kits:char/jacket/throw/stun/main

# Pistol
execute as @e[tag=JacketPistolBullet,type=area_effect_cloud] at @s run function kits:char/jacket/pistol/bullet_main

# Shotgun
execute as @e[tag=JacketShotgunBullet,type=area_effect_cloud] at @s run function kits:char/jacket/shotgun/bullet_main

## Using Conditions
execute at @s[scores={kits.criterion.attack=1..},predicate=kits:items/jacket/bat] run function kits:char/jacket/bat/passive/attack
execute at @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/jacket/bat] at @s[scores={kits.ability1CD=100..}] run function kits:char/jacket/bat/swing/use
execute at @s[scores={kits.criterion.COS=1..},predicate=kits:items/jacket/pistol] at @s[scores={kits.ability3CD=5..}] at @s[scores={kits.timer=1..4}] run function kits:char/jacket/pistol/use
execute at @s[scores={kits.criterion.COS=1..},predicate=kits:items/jacket/shotgun] at @s[scores={kits.ability3CD=10..}] at @s[scores={kits.timer=1..2}] run function kits:char/jacket/shotgun/use
execute at @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/jacket/thrown_weapons] at @s[scores={kits.ability2CD=100..}] run function kits:char/jacket/throw/use
