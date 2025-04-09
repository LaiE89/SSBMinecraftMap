## Execute at Enemies Hit by Red
# Damage
damage @s 5 player_attack

# Knockback
scoreboard players set @s kits.specific.gojokits.raycastTick 0
execute positioned ~ ~1 ~ facing entity @e[limit=1,sort=nearest,tag=GojoRedKbMarker,type=area_effect_cloud] feet run function kits:gojo/inherited/red/kb

# VFX
particle item{item:"bone"} 0 0 1 5 0 0 1 5 force
particle item{item:"nether_wart_block"} 0 0 1 10 0 0 1 10 force
