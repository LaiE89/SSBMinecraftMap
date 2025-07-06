scoreboard players add @s kits.timer2 1
effect give @s minecraft:speed 1 0 true
effect clear @s[scores={kits.timer2=200..}] minecraft:speed
execute at @s[scores={kits.timer2=200..}] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 200 force
clear @s[scores={kits.timer2=200..}] minecraft:player_head[custom_name="Devil Trigger"]
item replace entity @s[scores={kits.timer2=200..}] armor.head with player_head[custom_name="Vergil",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.vergil",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;-1944059747,-4700758,-2128888949,-707270116],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiMjgwMzczMjJjMTk3ZjdhMDA4MmY4NzY1N2Y2OWIzNTFhODExNjdmMmVlZThiODlmOTllOGMzMWFkNzcxMSJ9fX0="}]}] 1
tag @s[scores={kits.timer2=200..}] remove VergilDevilTrigger
scoreboard players reset @s[scores={kits.timer2=200..}] kits.timer2