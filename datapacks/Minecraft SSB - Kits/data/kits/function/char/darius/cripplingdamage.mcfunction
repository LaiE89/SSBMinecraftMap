effect give @s minecraft:slowness 1 1 true
damage @s 6 bypass:player_attack by @p[tag=Darius]
playsound minecraft:entity.player.attack.crit neutral @a[distance=..10] ~ ~ ~ 3 0.5 1
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.5 0.4 0 50 force
function kits:char/darius/applystacks
