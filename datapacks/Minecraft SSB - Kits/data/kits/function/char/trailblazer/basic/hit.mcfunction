## Execute at Enemies Hit by Basic Attack
damage @s 6 bypass:player_attack by @p[tag=Trailblazer]

# FX
particle item{item:"nether_wart_block"} 0 0 0.5 10 0 0 0.5 10 force
playsound entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound minecraft:item.mace.smash_air neutral @a[distance=..30] ~ ~ ~ 3 1.5 1
