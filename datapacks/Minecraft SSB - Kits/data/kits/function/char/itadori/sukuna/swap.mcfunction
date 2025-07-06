## Switches to Sukuna
# Swaps looks
item replace entity @s armor.head with player_head[custom_name="Ryomen Sukuna",unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.itadori",type:"armor",amount:3,operation:"add_value",slot:"head"},{id:"tough.head.itadori",type:"armor_toughness",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;275833638,-1524282077,-1347157703,407022208],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmUyYWIzZmM5Mjc4NTQ4MTc4NTUxOWVlYjJkYmViZDI3OGRhNmYxNzVmNGQyYzg4NWUyZDRhNWNkZWRiNDkwMyJ9fX0="}]}] 1
clear @s player_head[custom_name="Yuji Itadori"]
tag @s[tag=ItadoriBlackflash] remove ItadoriBlackflash
effect clear @s resistance
effect clear @s speed
effect give @s minecraft:regeneration 3 1 true
attribute @s minecraft:attack_damage modifier add damage.dismantle.itadori -0.5 add_multiplied_total

# FX
particle squid_ink ~ ~1 ~ 0 0 0 0.5 10 force
playsound entity.generic.extinguish_fire neutral @a[distance=..20] ~ ~ ~ 0.5 0.75 0.5

scoreboard players set @s kits.timer 0
scoreboard players set @s kits.ability3CD 0
scoreboard players set @s kits.ability5CD 0
tag @s remove ItadoriRage
tag @s add Sukuna
