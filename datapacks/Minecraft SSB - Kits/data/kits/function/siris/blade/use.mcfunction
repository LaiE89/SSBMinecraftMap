# When Using Infinity Blade
execute if entity @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability1CD=300..}] run function kits:siris/blade/super/use
execute if entity @s[scores={kits.criterion.shift=1..}] as @s[scores={kits.ability2CD=200..}] run function kits:siris/blade/magic/use
execute if entity @s[scores={kits.criterion.attack=1..}] run function kits:siris/blade/combo/attack
