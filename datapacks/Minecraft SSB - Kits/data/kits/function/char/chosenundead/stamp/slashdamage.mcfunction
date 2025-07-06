tag @s add ChosenUndeadStampSlashed
damage @s 12 bypass:player_attack by @e[type=area_effect_cloud,tag=ChosenUndeadStampSlash,limit=1,sort=nearest] from @p[tag=ChosenUndead]
effect give @s minecraft:slowness 1 4 true

playsound minecraft:item.mace.smash_air neutral @a[distance=..30] ~ ~ ~ 2 1 1
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 2 0 1
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.1 0.1 0.1 0.5 50 force
particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force

scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/chosenundead/stamp/knockup