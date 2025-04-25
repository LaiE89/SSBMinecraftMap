## Execute at Arrows Hit by Swing
# Redirects arrow
execute as @p[tag=Jacket] at @s run function kits:char/jacket/bat/swing/deflect/arrow_redirect
execute store result entity @s Motion[0] double 0.2 run scoreboard players get @p[tag=Jacket] kits.dx
execute store result entity @s Motion[1] double 0.2 run scoreboard players get @p[tag=Jacket] kits.dy
execute store result entity @s Motion[2] double 0.2 run scoreboard players get @p[tag=Jacket] kits.dz

# Makes the arrow deflect once
tag @s add JacketBatSwingDeflected

# Reset Jacket's cooldown
scoreboard players set @p[tag=Jacket] kits.ability1CD 95

# Sounds
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 0.25 1.25 1
playsound minecraft:item.shield.block neutral @a[distance=..20] ~ ~ ~ 2 1 1
