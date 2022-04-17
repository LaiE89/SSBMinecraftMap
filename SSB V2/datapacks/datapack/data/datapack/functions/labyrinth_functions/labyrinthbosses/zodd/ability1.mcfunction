playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 10 0 1
execute if entity @s[scores={Ability1CD=200}] run summon area_effect_cloud ~ ~ ~ {Tags:["CleaverSwing","zoddsword"],Duration:10}
execute if entity @s[scores={Ability1CD=220}] run summon area_effect_cloud ~ ~ ~ {Tags:["CleaverSwing","zoddaxe"],Duration:10}
tp @e[type=area_effect_cloud,tag=zoddsword] ~ ~ ~ facing ^3 ^ ^
tp @e[type=area_effect_cloud,tag=zoddaxe] ~ ~ ~ facing ^-3 ^ ^
scoreboard players set @s[scores={Ability1CD=220..}] Ability1CD 0