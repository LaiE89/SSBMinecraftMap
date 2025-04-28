## Swing Raycast
# Raycast essentials
scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^0.49 ^0.22 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^-0.49 ^0.22 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

# Detects hitting an entity with swing
execute as @s[scores={kits.raycastTick=..11}] run tag @e[distance=..2,limit=1,sort=nearest,tag=!Jacket,tag=!JacketBatSwing,tag=!JacketProjectile] add JacketBatSwingCollided
execute as @e[tag=JacketBatSwingCollided] at @s run function kits:char/jacket/bat/swing/collision

# Knocks entities back
execute as @s[scores={kits.raycastTick=2222}] run tp @e[tag=JacketBatSwingKB] ^ ^ ^
execute as @s[scores={kits.raycastTick=13}] run tp @e[tag=JacketBatSwingKB] ^ ^ ^

# Loop
execute as @s[scores={kits.raycastTick=..12}] positioned ^ ^ ^0.5 run function kits:char/jacket/bat/swing/raycast

# Swing hits only once
tag @e[tag=JacketBatSwingCollided] remove JacketBatSwingCollided
tag @e[tag=JacketBatSwingKB] remove JacketBatSwingKB
