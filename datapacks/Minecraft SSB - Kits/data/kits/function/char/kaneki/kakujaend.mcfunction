scoreboard players set @s kits.timer2 0
execute at @s run particle squid_ink ~ ~1 ~ 0.4 0.4 0.4 0.5 50 force
execute if entity @s run kill @e[type=area_effect_cloud,tag=KanekiKagune]
scoreboard players reset @s kits.timer
scoreboard players set @s kits.ability1CD 4
clear @s minecraft:player_head[custom_name="Kakuja"]
item replace entity @s armor.head with player_head[custom_name="Kaneki",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.kaneki",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;1541358001,1887784856,-1173820056,-2101818119],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RlNzQ2YTExZTdkOTY2MjdkMTBiNDc5MGE5MDE2ZjA4YjhiYjkzZjRhNDEzNzFiYTZjNGI0NjJiMzdjZWMwZCJ9fX0="}]}] 1
tag @s remove KanekiKakuja
scoreboard players reset @s kits.timer3