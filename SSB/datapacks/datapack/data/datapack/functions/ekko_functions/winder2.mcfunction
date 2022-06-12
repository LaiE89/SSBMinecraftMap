playsound minecraft:entity.blaze.hurt neutral @a[distance=..20] ~ ~ ~ 1 0 0
effect give @s minecraft:slowness 1 1 true
function datapack:damage1
scoreboard players add @s[tag=!EkkoPassiveCD] EkkoResonance 1
tag @s add EkkoTimeWinderHit2