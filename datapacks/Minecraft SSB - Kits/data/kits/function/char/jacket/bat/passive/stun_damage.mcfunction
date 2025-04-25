## What Happens to Stunned Entities Hit by Baseball Bat
# Pulverize strike counter
tag @s[tag=JacketPulverizeStrike2] add JacketPulverizeStrike3
tag @s[tag=JacketPulverizeStrike] add JacketPulverizeStrike2
tag @s[tag=!JacketPulverizeStrike] add JacketPulverizeStrike

# Damage
damage @s 9 bypass:player_attack by @p[tag=Jacket]
execute if entity @s[tag=JacketPulverizeStrike3] run function kits:char/jacket/bat/passive/strike3_damage

# Particles
particle minecraft:item{item:"minecraft:nether_wart_block"} ~ ~1 ~ 0 0 0 0.5 50 force

# Sounds
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound minecraft:entity.player.attack.strong neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound minecraft:item.shield.block neutral @a[distance=..20] ~ ~ ~ 2 0 1
