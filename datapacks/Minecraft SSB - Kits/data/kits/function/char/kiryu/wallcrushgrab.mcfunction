playsound minecraft:entity.player.attack.sweep neutral @a[distance=..10] ~ ~ ~ 10 0 1
particle sweep_attack ~ ~1 ~ 0 0 0 0 1 force
tag @s add KiryuGrabbed
attribute @s minecraft:gravity modifier add gravity.wallcrush.kiryu -1 add_multiplied_total
tp @s @s
