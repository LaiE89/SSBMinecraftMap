scoreboard players add @p[tag=Denji,scores={Timer=..4}] Timer 1
function datapack:damage1
effect give @s wither 2 1 true
effect give @s slowness 2 4 true
tag @s add DenjiChained
particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.4 1 0.4 0.1 50
playsound minecraft:block.grindstone.use neutral @a[distance=..30] ~ ~ ~ 3 1.5 1