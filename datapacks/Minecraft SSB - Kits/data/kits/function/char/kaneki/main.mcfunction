# Ability CDs
title @s[tag=!KanekiKakuja] actionbar ["",{"text":"Kakuja:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability3CD"}},{"text":"/700","color":"white"},{"text":" || "},{"text":"Kagune: ","color":"red"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"red"},{"text":"/4","color":"red"}]
title @s[tag=KanekiKakuja] actionbar ["",{"text":"Kakuja Time Left:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.timer3"},"color":"dark_red"},{"text":"/300","color":"dark_red"},{"text":" || "},{"text":"Kagune: ","color":"red"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"red"},{"text":"/6","color":"red"}]

# Kagune Regeneration
execute store result score @s kits.timer2 run execute if entity @e[type=area_effect_cloud,tag=KanekiKagune]

execute if entity @s[tag=!KanekiKakuja,scores={kits.timer2=0}] run scoreboard players add @s[scores={kits.ability1CD=..3}] kits.timer 1
execute if entity @s[tag=!KanekiKakuja,scores={kits.timer2=0}] if score @s kits.criterion.attack matches 1.. run scoreboard players add @s[scores={kits.ability1CD=..3}] kits.timer 35

execute if entity @s[tag=!KanekiKakuja,scores={kits.timer2=1}] run scoreboard players add @s[scores={kits.ability1CD=..2}] kits.timer 1
execute if entity @s[tag=!KanekiKakuja,scores={kits.timer2=1}] if score @s kits.criterion.attack matches 1.. run scoreboard players add @s[scores={kits.ability1CD=..2}] kits.timer 35

execute if entity @s[tag=!KanekiKakuja,scores={kits.timer2=2}] run scoreboard players add @s[scores={kits.ability1CD=..1}] kits.timer 1
execute if entity @s[tag=!KanekiKakuja,scores={kits.timer2=2}] if score @s kits.criterion.attack matches 1.. run scoreboard players add @s[scores={kits.ability1CD=..1}] kits.timer 35

execute if entity @s[tag=!KanekiKakuja,scores={kits.timer2=3}] run scoreboard players add @s[scores={kits.ability1CD=..0}] kits.timer 1
execute if entity @s[tag=!KanekiKakuja,scores={kits.timer2=3}] if score @s kits.criterion.attack matches 1.. run scoreboard players add @s[scores={kits.ability1CD=..0}] kits.timer 35

execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=0}] run scoreboard players add @s[scores={kits.ability1CD=..5}] kits.timer 1
execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=0}] if score @s kits.criterion.attack matches 1.. run scoreboard players add @s[scores={kits.ability1CD=..5}] kits.timer 20

execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=1}] run scoreboard players add @s[scores={kits.ability1CD=..4}] kits.timer 1
execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=1}] if score @s kits.criterion.attack matches 1.. run scoreboard players add @s[scores={kits.ability1CD=..4}] kits.timer 20

execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=2}] run scoreboard players add @s[scores={kits.ability1CD=..3}] kits.timer 1
execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=2}] if score @s kits.criterion.attack matches 1.. run scoreboard players add @s[scores={kits.ability1CD=..3}] kits.timer 20

execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=3}] run scoreboard players add @s[scores={kits.ability1CD=..2}] kits.timer 1
execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=3}] if score @s kits.criterion.attack matches 1.. run scoreboard players add @s[scores={kits.ability1CD=..2}] kits.timer 20

execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=4}] run scoreboard players add @s[scores={kits.ability1CD=..1}] kits.timer 1
execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=4}] if score @s kits.criterion.attack matches 1.. run scoreboard players add @s[scores={kits.ability1CD=..1}] kits.timer 20

execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=5}] run scoreboard players add @s[scores={kits.ability1CD=..0}] kits.timer 1
execute if entity @s[tag=KanekiKakuja,scores={kits.timer2=5}] if score @s kits.criterion.attack matches 1.. run scoreboard players add @s[scores={kits.ability1CD=..0}] kits.timer 20

scoreboard players add @s[tag=!KanekiKakuja,scores={kits.timer=70..}] kits.ability1CD 1
scoreboard players reset @s[tag=!KanekiKakuja,scores={kits.timer=70..}] kits.timer

scoreboard players add @s[tag=KanekiKakuja,scores={kits.timer=40..}] kits.ability1CD 1
scoreboard players reset @s[tag=KanekiKakuja,scores={kits.timer=40..}] kits.timer

# Kagune Throw
execute as @s[scores={kits.ability1CD=1..},predicate=kits:items/kaneki/kagune] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/kaneki/weapon1cos
execute as @e[type=area_effect_cloud,tag=KanekiKagune] at @s run function kits:char/kaneki/kagune

# Kagune Pull
scoreboard players add @s[scores={kits.ability4CD=..9}] kits.ability4CD 1
execute as @s[gamemode=!spectator,scores={kits.ability4CD=10..},predicate=kits:items/kaneki/kagune] as @s[scores={kits.criterion.shift=1..}] at @s if entity @e[type=area_effect_cloud,tag=KanekiKagune] run function kits:char/kaneki/weapon1shift

# Retrieve Kagune
scoreboard players add @s[scores={kits.ability2CD=..19}] kits.ability2CD 1
execute as @s[gamemode=!spectator,tag=Kaneki,scores={kits.ability2CD=20..},predicate=kits:items/kaneki/skills] as @s[scores={kits.criterion.COS=1..}] at @s if entity @e[type=area_effect_cloud,tag=KanekiKagune] run function kits:char/kaneki/weapon2cos

# Kakuja
scoreboard players add @s[scores={kits.ability3CD=..699}] kits.ability3CD 1
execute as @s[gamemode=!spectator,scores={kits.ability3CD=700..},predicate=kits:items/kaneki/skills] as @s[scores={kits.criterion.shift=1..}] at @s run function kits:char/kaneki/weapon2shift

execute as @s[tag=KanekiKakuja] unless items entity @s armor.head minecraft:player_head[custom_name="Kakuja"] run function kits:char/kaneki/kakuja

scoreboard players add @s[tag=KanekiKakuja] kits.timer3 1
execute if score @s[tag=KanekiKakuja] kits.timer3 matches 300.. run function kits:char/kaneki/kakujaend
