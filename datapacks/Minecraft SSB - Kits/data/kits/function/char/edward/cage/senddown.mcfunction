scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute if entity @s[scores={kits.raycastTick=2222..}] run effect clear @s minecraft:levitation
execute if entity @s[scores={kits.raycastTick=2222..}] run effect clear @s minecraft:slow_falling
execute if entity @s[scores={kits.raycastTick=2222..}] run tp @s ~ ~0.5 ~
execute if entity @s[scores={kits.raycastTick=2222..}] run particle item{item:"dirt"} ~ ~0.75 ~ 2 0 2 0.1 100 force
execute if entity @s[scores={kits.raycastTick=2222..}] run playsound minecraft:ui.stonecutter.take_result neutral @a[distance=..50] ~ ~0.5 ~ 5 0 1
execute if entity @s[scores={kits.raycastTick=2222..}] run function kits:char/edward/cage/summon4
execute as @s[scores={kits.raycastTick=..1111}] positioned ~ ~-0.5 ~ run function kits:char/edward/cage/senddown
