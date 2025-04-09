scoreboard players add @p[tag=Denji,scores={kits.timer=..4}] kits.timer 1
damage @s 6 bypass:player_attack_no_kb by @e[type=area_effect_cloud,tag=chainsawchain,limit=1,sort=nearest] from @p[tag=Denji]
effect give @s wither 2 1 true
effect give @s slowness 2 3 true
tag @s add DenjiChained
particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.4 1 0.4 0.1 50 force
playsound minecraft:block.grindstone.use neutral @a[distance=..30] ~ ~ ~ 3 1.5 1
