## When Block is Held
# Block upon impact
execute if entity @s[nbt={HurtTime:9s}] run function kits:char/siris/shield/block/impact

# Effects
effect give @s resistance 1 2 true
attribute @s minecraft:movement_speed modifier add speed.shield.siris -0.08 add_value
effect give @s[scores={kits.criterion.COSon=..4}] resistance 1 4 true
effect clear @s[scores={kits.criterion.COSon=5},nbt={active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] resistance

# VFX
execute rotated ~ 0 run function kits:char/siris/vfx/particles/block
