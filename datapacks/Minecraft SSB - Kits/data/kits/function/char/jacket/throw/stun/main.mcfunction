## Execute at Stunned Entities
# Stun duration
scoreboard players add @s kits.specific.jacketStunTick 1
execute at @s[scores={kits.specific.jacketStunTick=40..}] run function kits:char/jacket/throw/stun/reset

# Status effect
effect give @s minecraft:slowness 1 2 true

# Particles
particle enchanted_hit ~ ~1.75 ~ 0 0 0 0.5 5 force
