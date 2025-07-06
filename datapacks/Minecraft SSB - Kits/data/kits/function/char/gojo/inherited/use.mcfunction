## When using inherited techniques
execute if entity @s[scores={kits.criterion.COS=1..}] if entity @s[scores={kits.ability3CD=30..}] unless entity @e[type=area_effect_cloud,tag=GojoUnlimitedVoid] if entity @s[scores={kits.ability1CD=30..}] run function kits:char/gojo/inherited/red/use
execute if entity @s[scores={kits.criterion.shift=1..}] if entity @s[scores={kits.ability4CD=30..}] unless entity @e[type=area_effect_cloud,tag=GojoUnlimitedVoid] if entity @s[scores={kits.ability1CD=30..}] run function kits:char/gojo/inherited/blue/use

execute if entity @s[scores={kits.criterion.COS=1..}] if entity @s[scores={kits.ability3CD=30..}] if entity @e[type=area_effect_cloud,tag=GojoUnlimitedVoid] if entity @s[scores={kits.ability1CD=-30..}] run function kits:char/gojo/inherited/red/use
execute if entity @s[scores={kits.criterion.shift=1..}] if entity @s[scores={kits.ability4CD=30..}] if entity @e[type=area_effect_cloud,tag=GojoUnlimitedVoid] if entity @s[scores={kits.ability1CD=-30..}] run function kits:char/gojo/inherited/blue/use
