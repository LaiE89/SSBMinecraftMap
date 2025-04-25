## Every Time User Attacks
# Bonus combo
scoreboard players add @s kits.ability5CD 1
execute positioned as @e[nbt={HurtTime:10s},distance=..5,limit=1,sort=nearest] run function kits:char/siris/blade/combo/criteria

# SFX
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 1 1 1
playsound item.trident.return neutral @a[distance=..20] ~ ~ ~ 0.5 1.5 0.5
