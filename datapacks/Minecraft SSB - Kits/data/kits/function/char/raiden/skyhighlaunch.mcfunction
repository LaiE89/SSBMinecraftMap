scoreboard players set @s kits.specific.raidenCrescentTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/raiden/raidenpassive5
playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..20] ~ ~ ~ 2 2 1
playsound minecraft:entity.player.hurt neutral @a[distance=..15] ~ ~ ~ 5 1.5 1
damage @s 6 bypass:player_attack_no_kb by @p[tag=Raiden]
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.4 0.4 0 10 force
effect give @s minecraft:levitation 3 0 true

scoreboard players set @p[tag=Raiden] kits.raycastTick 0
execute as @p[tag=Raiden] at @s positioned ~ ~1.5 ~ run function kits:char/raiden/raidenpassive6
effect give @p[tag=Raiden] minecraft:levitation 3 0 true
