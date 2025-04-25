tp @p[tag=Doomslayer] @s
particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.5 1 0.5 0 500 force
playsound minecraft:entity.wither.break_block neutral @a[distance=..40] ~ ~ ~ 3 0.5 1
effect give @p[tag=Doomslayer] minecraft:instant_health 1 1 true
damage @s 24 minecraft:player_attack by @p[tag=Doomslayer]
scoreboard players add @p[tag=Doomslayer,scores={kits.ability7CD=..99}] kits.ability7CD 50