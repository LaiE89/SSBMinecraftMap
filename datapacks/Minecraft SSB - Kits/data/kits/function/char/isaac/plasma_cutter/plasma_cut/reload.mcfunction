## When Isaac Starts Reloading
# Particles
particle crit ~ ~1 ~ 0 0 0 1 10 force

# Sound
playsound minecraft:block.vault.eject_item neutral @a[distance=..20] ~ ~ ~ 3 1 1

# Reload model
function kits:generic/utility/edit_item/modify/run {item:'{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"color":"aqua","italic":false,"text":"Plasma Cutter"}}}',newModifier:'"kits:character_specific/isaac_anim"'}
