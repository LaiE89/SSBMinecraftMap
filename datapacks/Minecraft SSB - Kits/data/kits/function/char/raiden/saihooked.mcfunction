tag @s add RaidenHooked
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 2 2 1
effect give @s[type=!minecraft:player] minecraft:weakness 1 9 true
function kits:char/raiden/damage
kill @e[type=area_effect_cloud,tag=raidensai]
