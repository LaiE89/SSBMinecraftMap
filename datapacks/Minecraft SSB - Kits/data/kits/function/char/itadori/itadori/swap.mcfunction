## Switches to Itadori
# Kill domain
kill @e[type=area_effect_cloud,tag=ItadoriShrine]

# Swaps looks
item replace entity @s armor.head with player_head[custom_name="Yuji Itadori",unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.itadori",type:"armor",amount:3,operation:"add_value",slot:"head"},{id:"tough.head.itadori",type:"armor_toughness",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;-1588905354,2145534486,-1515965606,1627045194],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmY1MzBlYmVmYmQ1YjRjYTE3MDJiNDE5YjUwZGYwYWZkNjY4OGUwYWNjOTcwMTMxYmQ4NzAzNzgyNTRiYzZjNSJ9fX0="}]}] 1
clear @s player_head[custom_name="Ryomen Sukuna"]
attribute @s minecraft:attack_damage modifier remove damage.dismantle.itadori

# FX
particle squid_ink ~ ~1 ~ 0 0 0 0.5 10 force
playsound entity.generic.extinguish_fire neutral @a[distance=..20] ~ ~ ~ 0.5 0.75 0.5

scoreboard players set @s kits.timer 0
tag @s remove ItadoriRage
tag @s remove Sukuna
