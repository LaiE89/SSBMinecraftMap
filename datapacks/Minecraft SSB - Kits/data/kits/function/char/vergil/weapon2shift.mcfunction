tag @s add VergilDevilTrigger
clear @s minecraft:player_head[custom_name="Vergil"]
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["VergilSpiralSwords"]}
effect give @s minecraft:instant_health 1 0 true
effect give @s minecraft:regeneration 10 1 true
item replace entity @s armor.head with player_head[custom_name="Devil Trigger",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.vergil",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;1927857700,-931839921,-1471013991,1714197496],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzU3ZGRkOGM5NGIyZmY1Y2YyZjUxODhmNDYxMmI1MjNmNTQzNGI5ZjE3MjYzYTY3ODExYTM5ZDg1NDA3NTQwNiJ9fX0="}]}] 1
playsound minecraft:block.end_portal.spawn neutral @a[distance=..30] ~ ~ ~ 10 1.5 1
particle flash ~ ~-1 ~ 0 0 0 0 10 force
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 200 force
tag @s add VergilDash
scoreboard players set @s kits.timer4 0
scoreboard players set @s kits.ability4CD 0
