tag @s add ArcueidRed
execute as @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] at @s run function kits:arcueid/fear
particle squid_ink ~ ~1 ~ 0 0 0 0.2 100 force
clear @s minecraft:player_head[custom_name="Arcueid"]
item replace entity @s armor.head with player_head[custom_name="Red Arcueid",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.arcueid",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;1942743758,-985382235,-1498796417,810472037],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjRmMzBhN2U1NWE3OTRmNjkxMGNhODM3MTY2ZTk3ZDdiOGM1YTU1MGNmYTMyYjYzODNmZmIzMWQ0YmIwMzFmOSJ9fX0="}]}] 1
playsound minecraft:entity.cat.hiss neutral @a[distance=..50] ~ ~ ~ 3 0 1
effect give @s speed 8 1 true
scoreboard players set @s kits.ability2CD 0
