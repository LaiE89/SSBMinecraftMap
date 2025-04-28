## When infinity is active
# effects
attribute @s knockback_resistance base set 20
effect clear @s regeneration
effect give @s resistance 1 4 true

# when hurt
execute if entity @s[scores={kits.ability1CD=0..}] if score @s kits.criterion.resistDmg matches 1.. run function kits:char/gojo/passives/infinity/hurt