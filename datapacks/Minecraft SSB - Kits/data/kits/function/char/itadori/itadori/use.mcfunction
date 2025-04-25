# When Using Itadori's Jujutsu
execute if entity @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability2CD=10..}] as @s[scores={kits.ability1CD=10..}] run function kits:char/itadori/itadori/black_flash/use
execute if entity @s[scores={kits.criterion.shift=1..}] as @s[scores={kits.ability3CD=10..}] as @s[scores={kits.ability1CD=10..}] unless score @s kits.timer matches 100.. run function kits:char/itadori/itadori/stat_check/use
execute if entity @s[scores={kits.criterion.shift=1..}] as @s[scores={kits.ability3CD=10..}] as @s[scores={kits.ability1CD=10..}] if score @s kits.timer matches 100.. run function kits:char/itadori/sukuna/swap
