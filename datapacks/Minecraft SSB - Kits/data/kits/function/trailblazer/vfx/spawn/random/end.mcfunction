# Summons Ally to Random Spawn Position
execute if score @s kits.raycastTick matches 0 run summon armor_stand ^ ^ ^-1 {Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["TrailblazerNew"],DisabledSlots:4144959}
execute if score @s kits.raycastTick matches 1 run summon armor_stand ^ ^ ^ {Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["TrailblazerNew"],DisabledSlots:4144959}
