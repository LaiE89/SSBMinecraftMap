playsound minecraft:entity.player.attack.knockback neutral @a[distance=..15] ~ ~ ~ 1 0.75 1
#effect give @s minecraft:levitation 1 0 true 
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/kaneki/kanekipassive6
scoreboard players set @s kits.ability4CD 0
