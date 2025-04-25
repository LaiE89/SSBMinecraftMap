## Combo Stun
# Stun duration
scoreboard players remove @s kits.specific.noctisBleed 1
scoreboard players operation @s kits.specific.noctisBleed2 = @s kits.specific.noctisBleed
scoreboard players operation @s kits.specific.noctisBleed2 %= @p[tag=Noctis] kits.timer3

# Bleed
damage @s[scores={kits.specific.noctisBleed2=3}] 2 bypass:player_attack_no_kb

# FX
execute if score @s kits.specific.noctisBleed2 matches 3 run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0 0 0 0.1 10 force
execute if score @s kits.specific.noctisBleed2 matches 3 run playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..10] ~ ~ ~ 2 1.5 1
