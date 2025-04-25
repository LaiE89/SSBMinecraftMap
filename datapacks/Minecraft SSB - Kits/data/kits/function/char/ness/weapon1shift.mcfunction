execute if entity @s[tag=!NessGuard] run playsound minecraft:entity.illusioner.mirror_move neutral @a[distance=..20] ~ ~ ~ 1 2 1
tag @s[tag=!NessGuard] add NessGuard
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
effect give @s minecraft:resistance 1 2 true
effect give @s minecraft:mining_fatigue 1 9 true
attribute @s minecraft:attack_damage modifier add damage.guard.ness -20 add_value
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 2 1.5 1