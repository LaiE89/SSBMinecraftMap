## When hurt while rct is active
# reset
attribute @s knockback_resistance base set 0
effect clear @s regeneration

# remove cursed energy
function kits:char/gojo/passives/rct/lose_energy