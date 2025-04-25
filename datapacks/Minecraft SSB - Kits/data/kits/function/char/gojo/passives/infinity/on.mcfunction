## When infinity is active
# effects
attribute @s knockback_resistance base set 20
effect clear @s regeneration
effect give @s resistance 1 4 true

# when hurt
execute if entity @s[nbt={HurtTime:9s}] run function kits:char/gojo/passives/infinity/hurt