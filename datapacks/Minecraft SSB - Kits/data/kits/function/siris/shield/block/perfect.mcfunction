## Perfect Block
# Cooldown recharges
scoreboard players add @s kits.ability1CD 50
scoreboard players add @s kits.ability4CD 50
scoreboard players set @s[scores={kits.ability1CD=300..}] kits.ability1CD 300
scoreboard players set @s[scores={kits.ability4CD=100..}] kits.ability4CD 100

# FX
execute rotated ~ 0 positioned ^ ^1 ^1 run function kits:siris/vfx/particles/ripple/type3
execute rotated ~ 0 run particle flash ^ ^1 ^1 0 0 0 0 1 force
playsound entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 0.5 0 0.5
