# When Infinity is Active
effect give @s resistance 2 4 true
execute if entity @s[nbt={HurtTime:9s}] run function kits:gojo/infinity/remove
