execute if entity @s[tag=LucarioAuraSphereCharge] run tp @s @p[tag=Lucario]
execute if entity @s[tag=LucarioAuraSphereCharge] run execute rotated ~ 0 positioned ^-0.55 ^1 ^0.5 run particle dust{color:[0.000,0.835,1.000],scale:1.5} ~ ~ ~ 0 0 0 1 0 force

execute unless entity @s[tag=LucarioAuraSphereCharge] run function kits:char/cynthia/lucario/aurasphereprojectile

