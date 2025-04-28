## Positioned at Attacked Enemy
# Bonus combo criteria
execute if score @s kits.ability5CD matches ..4 positioned ~ ~1 ~ run function kits:char/siris/blade/combo/use_normal
execute if score @s kits.ability5CD matches 5.. positioned ~ ~1 ~ run function kits:char/siris/blade/combo/use_strong
tag @s[tag=SirisDarkfire] remove SirisDarkfire
