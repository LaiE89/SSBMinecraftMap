scoreboard players set @s kits.timer2 0
kill @e[type=area_effect_cloud,tag=KanekiKagune]
scoreboard players reset @s kits.timer
scoreboard players set @s kits.ability1CD 6
playsound minecraft:entity.wither.break_block neutral @a[distance=..50] ~ ~ ~ 10 0.5 1
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.5 1 0.5 0 200 force
tag @s add KanekiKakuja
effect give @s regeneration 15 1 true
effect give @s speed 3 4 true
clear @s minecraft:player_head[custom_name="Kaneki"]
item replace entity @s armor.head with player_head[custom_name="Kakuja",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.kaneki",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;-16977185,811288703,-1145564788,-520051058],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjU0ZWEzNTgzYTBhNmM1NGUxYTI3ZGI2MDI5YjgzMjkwM2Y5MGFiOTZjMTg1YjYwMjkwN2RjNGQxN2VmY2M2MSJ9fX0="}]}] 1
scoreboard players set @s kits.ability3CD 0
