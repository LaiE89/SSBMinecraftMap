damage @s 1 bypass:player_attack by @p[tag=Brad]
effect give @s[type=!minecraft:player] minecraft:weakness 1 1 true
effect give @s minecraft:slowness 1 9 true
effect give @s minecraft:blindness 1 0 true
particle explosion ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.zombie.attack_wooden_door neutral @a[distance=..20] ~ ~ ~ 2 0 1
