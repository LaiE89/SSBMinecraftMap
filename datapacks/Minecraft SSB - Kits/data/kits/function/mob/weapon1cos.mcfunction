summon armor_stand ^ ^-1.5 ^1.5 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["telekinesis","projectile"]}
loot spawn ~ ~-100 ~ mine ~ ~-1 ~ diamond_pickaxe[enchantments={"minecraft:silk_touch":1}]
execute positioned ~ ~-100 ~ as @e[type=minecraft:armor_stand,tag=telekinesis] run data modify entity @s equipment.head.id set string entity @e[type=item,limit=1,sort=nearest] Item.id
execute positioned ~ ~-100 ~ run kill @e[type=item,sort=nearest,limit=1]
playsound minecraft:entity.evoker.cast_spell neutral @a[distance=..20] ~ ~ ~ 10 1.5 1
scoreboard players set @s kits.ability2CD 0
