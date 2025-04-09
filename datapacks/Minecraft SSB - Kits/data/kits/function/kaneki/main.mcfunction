# Ability CDs
title @s[tag=!KanekiKakuja] actionbar ["",{"text":"Retrieve Kagune: "},{"score":{"name":"@s","objective":"kits.ability2CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Kakuja:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability3CD"}},{"text":"/700","color":"white"},{"text":" || "},{"text":"Kagune: ","color":"red"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"red"},{"text":"/4","color":"red"}]
title @s[tag=KanekiKakuja] actionbar ["",{"text":"Retrieve Kagune: "},{"score":{"name":"@s","objective":"kits.ability2CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Kakuja Time Left:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.timer3"},"color":"dark_red"},{"text":"/300","color":"dark_red"},{"text":" || "},{"text":"Kagune: ","color":"red"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"red"},{"text":"/6","color":"red"}]

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
execute as @s[scores={kits.ability1CD=1..},predicate=kits:items/kaneki/kagune] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:kaneki/weapon1cos
execute as @e[type=area_effect_cloud,tag=KanekiKagune] at @s run function kits:kaneki/kagune

# Kagune Pull
scoreboard players add @s[scores={kits.ability4CD=..9}] kits.ability4CD 1
execute as @s[gamemode=!spectator,scores={kits.ability4CD=10..},predicate=kits:items/kaneki/kagune] as @s[scores={kits.criterion.shift=1..}] at @s if entity @e[type=area_effect_cloud,tag=KanekiKagune] run function kits:kaneki/weapon1shift

# Retrieve Kagune
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[gamemode=!spectator,tag=Kaneki,scores={kits.ability2CD=100..},predicate=kits:items/kaneki/skills] as @s[scores={kits.criterion.COS=1..}] at @s if entity @e[type=area_effect_cloud,tag=KanekiKagune] run function kits:kaneki/weapon2cos

# Kakuja
scoreboard players add @s[scores={kits.ability3CD=..699}] kits.ability3CD 1
execute as @s[gamemode=!spectator,scores={kits.ability3CD=700..},predicate=kits:items/kaneki/skills] as @s[scores={kits.criterion.shift=1..}] at @s run function kits:kaneki/weapon2shift

execute as @s[tag=KanekiKakuja] unless items entity @s armor.head minecraft:player_head[custom_name="Kakuja"] run function kits:kaneki/kakuja

scoreboard players add @s[tag=KanekiKakuja] kits.timer3 1
scoreboard players set @s[tag=KanekiKakuja,scores={kits.timer3=300..}] kits.timer2 0
execute at @s[tag=KanekiKakuja,scores={kits.timer3=300..}] run particle squid_ink ~ ~1 ~ 0.4 0.4 0.4 0.5 50 force
execute if entity @s[tag=KanekiKakuja,scores={kits.timer3=300..}] run kill @e[type=area_effect_cloud,tag=KanekiKagune]
scoreboard players reset @s[tag=KanekiKakuja,scores={kits.timer3=300..}] kits.timer
scoreboard players set @s[tag=KanekiKakuja,scores={kits.timer3=300..}] kits.ability1CD 4
clear @s[tag=KanekiKakuja,scores={kits.timer3=300..}] minecraft:player_head[custom_name="Kakuja"]
item replace entity @s[tag=KanekiKakuja,scores={kits.timer3=300..}] armor.head with player_head[custom_name="Kaneki",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.kaneki",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;1541358001,1887784856,-1173820056,-2101818119],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RlNzQ2YTExZTdkOTY2MjdkMTBiNDc5MGE5MDE2ZjA4YjhiYjkzZjRhNDEzNzFiYTZjNGI0NjJiMzdjZWMwZCJ9fX0="}]}] 1
tag @s[tag=KanekiKakuja,scores={kits.timer3=300..}] remove KanekiKakuja
scoreboard players reset @s[scores={kits.timer3=300..}] kits.timer3
