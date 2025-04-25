# When Using Sukuna's Jujutsu
execute if entity @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability4CD=10..}] as @s[scores={kits.ability1CD=10..}] run function kits:char/itadori/sukuna/slice/use
execute if entity @s[scores={kits.criterion.shift=1..}] as @s[scores={kits.ability5CD=20..}] as @s[scores={kits.ability1CD=60..}] run function kits:char/itadori/sukuna/domain/use
execute if score @s kits.ability6CD matches 50.. run function kits:char/itadori/sukuna/pyrokinesis/use
