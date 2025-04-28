# When Using Infinity Blade
execute if entity @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability1CD=300..}] if entity @e[type=!#kits:non_entity,distance=..10,tag=!Siris,tag=!InLabyrinth,tag=!Invincible] run function kits:char/siris/blade/super/use
execute if entity @s[scores={kits.criterion.shift=1..}] as @s[scores={kits.ability2CD=200..}] run function kits:char/siris/blade/magic/use
execute if entity @s[scores={kits.criterion.attack=1..}] run function kits:char/siris/blade/combo/attack
