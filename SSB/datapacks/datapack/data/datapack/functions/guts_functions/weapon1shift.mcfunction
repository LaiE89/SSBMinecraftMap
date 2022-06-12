effect give @s mining_fatigue 1 99 true
scoreboard players set @s Timer2 0
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 10 0 1
summon area_effect_cloud ~ ~ ~ {Tags:["DragonslayerSwing"],Duration:10}
tp @e[type=area_effect_cloud,tag=DragonslayerSwing] ~ ~ ~ facing ^3 ^ ^
scoreboard players set @s Ability1CD 0