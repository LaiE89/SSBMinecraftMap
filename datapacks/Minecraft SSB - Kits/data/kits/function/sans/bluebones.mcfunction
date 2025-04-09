execute if entity @s[type=minecraft:player,tag=!SansBlueBonesDamaged] run function kits:sans/bluebones2
execute unless entity @s[type=minecraft:player] unless data entity @s {Motion:[.0,-.0784000015258789,.0]} if entity @s[tag=!SansBlueBonesDamaged] run function kits:sans/bluebonesdamage2
