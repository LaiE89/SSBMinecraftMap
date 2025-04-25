## When hurt while infinity is active
# reset
attribute @s knockback_resistance base set 0
effect clear @s resistance

# fx
execute positioned ~ ~1 ~ run function kits:char/gojo/vfx/particles/barrier
playsound entity.player.attack.nodamage neutral @a[distance=..20] ~ ~ ~ 2 0 1

# remove cursed energy
function kits:char/gojo/passives/infinity/lose_energy