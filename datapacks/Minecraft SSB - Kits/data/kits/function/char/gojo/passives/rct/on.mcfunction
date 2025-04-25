## When rct is active
# effects
attribute @s knockback_resistance base set 0
effect clear @s resistance
effect give @s regeneration 1 5 true

# when hurt
execute if entity @s[nbt={HurtTime:9s}] run function kits:char/gojo/passives/rct/hurt

# aura
particle dust{color:[0,1,1],scale:1} ~ ~1 ~ 0.5 0.5 0.5 0 1