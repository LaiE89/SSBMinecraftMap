## Positioned at Attacked Enemy
# Bonus combo criteria
execute if score @s kits.ability5CD matches ..4 positioned ~ ~1 ~ run function kits:siris/blade/combo/use_normal
execute if score @s kits.ability5CD matches 5.. positioned ~ ~1 ~ run function kits:siris/blade/combo/use_strong
tag @s[tag=kits.specific.sirisDarkfire] remove kits.specific.sirisDarkfire
