## Execute at Enemies Hit by Blue
# Damage
damage @s 1 player_attack

# Attraction
scoreboard players set @s kits.specific.gojokits.raycastTick 0
execute positioned ~ ~1 ~ facing entity @e[limit=1,sort=nearest,tag=GojoBlue,type=area_effect_cloud] feet run function kits:gojo/inherited/blue/attract
