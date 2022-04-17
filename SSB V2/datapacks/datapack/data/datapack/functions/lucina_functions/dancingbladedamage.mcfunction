execute at @p[tag=Lucina] run particle minecraft:firework ~ ~1 ~ 1 0 1 0.5 20
execute at @p[tag=Lucina] run particle minecraft:sweep_attack ^ ^1.25 ^4 0 0 0 0 1
execute at @p[tag=Lucina] run particle minecraft:sweep_attack ^2 ^1.25 ^3 0 0 0 0 1
execute at @p[tag=Lucina] run particle minecraft:sweep_attack ^-2 ^1.25 ^3 0 0 0 0 1
execute at @p[tag=Lucina] run particle minecraft:sweep_attack ^4 ^1.25 ^2 0 0 0 0 1
execute at @p[tag=Lucina] run particle minecraft:sweep_attack ^-4 ^1.25 ^2 0 0 0 0 1
execute at @p[tag=Lucina] run playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 10 0 1
function datapack:damage2
tag @s add LucinaKnockback
scoreboard players set @p[tag=Lucina] RaycastTimer 0
execute as @p[tag=Lucina] at @s positioned ~ ~1.5 ~ run function datapack:lucina_functions/lucinapassive2
tag @e[tag=LucinaKnockback] remove LucinaKnockback