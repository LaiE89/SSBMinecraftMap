execute as @e[type=skeleton,tag=prisonwarrior] at @s if entity @p[distance=..6] run item replace entity @s[nbt={HandItems:[{},{id:"minecraft:bow"}]}] weapon.mainhand with minecraft:iron_sword{Enchantments:[{id:knockback,lvl:5},{id:sharpness,lvl:1}]} 1
execute as @e[type=skeleton,tag=prisonwarrior] at @s unless entity @p[distance=..6] run item replace entity @s[nbt={HandItems:[{},{id:"minecraft:iron_sword"}]}] weapon.mainhand with bow{Unbreakable:1,Enchantments:[{id:power,lvl:3},{id:punch,lvl:3}]} 1