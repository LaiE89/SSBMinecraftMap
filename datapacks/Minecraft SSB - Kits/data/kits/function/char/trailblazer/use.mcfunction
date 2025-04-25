# When Using Bat
execute if entity @s[scores={kits.ability1CD=1..}] as @s[scores={kits.ability4CD=20..}] as @s[scores={kits.criterion.COS=1..}] run function kits:char/trailblazer/skill/use
execute if entity @s[scores={kits.ability3CD=40..}] as @s[scores={kits.criterion.shift=1..}] run function kits:char/trailblazer/basic/use
