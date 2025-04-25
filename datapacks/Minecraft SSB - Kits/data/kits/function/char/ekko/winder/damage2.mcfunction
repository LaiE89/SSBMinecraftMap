playsound minecraft:entity.blaze.hurt neutral @a[distance=..40] ~ ~ ~ 2 1.75 1
effect give @s minecraft:slowness 1 1 true
damage @s 6 bypass:player_attack by @e[type=armor_stand,tag=EkkoTimeWinder,limit=1,sort=nearest] from @p[tag=Ekko]
scoreboard players add @s[tag=!EkkoPassiveCD] kits.specific.ekkoResonance 1
tag @s add EkkoTimeWinderHit2
