particle minecraft:squid_ink ~ ~1 ~ 0.3 0.3 0.3 0.5 50
effect give @s minecraft:invisibility 3 0 true
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand air
effect give @a[distance=..6] minecraft:blindness 2 0 true
playsound minecraft:entity.generic.extinguish_fire neutral @a[distance=..7] ~ ~ ~ 10 0.75 1