# When Using The Vile Shield
execute if entity @s[scores={kits.ability3CD=1..}] run function kits:siris/shield/block/use
execute if entity @s[scores={kits.criterion.shift=1..}] as @s[scores={kits.ability4CD=100..}] run function kits:siris/shield/gem/use
