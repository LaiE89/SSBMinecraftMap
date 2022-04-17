scoreboard players add @p[tag=Lucina,scores={Timer=..3}] Timer 1
effect clear @p[tag=Lucina] levitation
function datapack:damage1
playsound minecraft:entity.wither.break_block neutral @a[distance=..15] ~ ~ ~ 3 1.5 1
particle minecraft:firework ~ ~1 ~ 0 0 0 0.5 30
kill @e[type=area_effect_cloud,tag=LucinaDestination]