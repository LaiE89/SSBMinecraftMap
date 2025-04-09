## Execute at Enemies Hit by Basic Attack
# Damage and knockback
damage @s 10 player_attack
scoreboard players set %TrailblazerKB kits.raycastTick 15
execute positioned ~ ~1.5 ~ facing entity @p[tag=Trailblazer] eyes run function kits:trailblazer/basic/kb
scoreboard players reset %TrailblazerKB kits.raycastTick

# FX
particle item{item:"nether_wart_block"} 0 0 0.5 10 0 0 0.5 10 force
playsound entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 0.5 0 0.5
