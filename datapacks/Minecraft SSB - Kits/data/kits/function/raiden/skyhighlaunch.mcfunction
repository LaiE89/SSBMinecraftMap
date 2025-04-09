scoreboard players set @s kits.specific.raidenCrescentTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:raiden/raidenpassive5
playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..20] ~ ~ ~ 2 2 1
function kits:raiden/damage
effect give @s minecraft:levitation 3 0 true

scoreboard players set @p[tag=Raiden] kits.raycastTick 0
execute as @p[tag=Raiden] at @s positioned ~ ~1.5 ~ run function kits:raiden/raidenpassive6
effect give @p[tag=Raiden] minecraft:levitation 3 0 true
