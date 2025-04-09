playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 1 1
playsound minecraft:block.lava.extinguish neutral @a[distance=..20] ~ ~ ~ 2 2 1
#playsound minecraft:entity.player.hurt_on_fire neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound minecraft:item.trident.return neutral @a[distance=..20] ~ ~ ~ 2 2 1
damage @s 4 bypass:player_attack by @p[tag=Kratos]
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.4 0.4 0 20 force
particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force
scoreboard players add @p[tag=Kratos,tag=!KratosRage] kits.timer2 5
