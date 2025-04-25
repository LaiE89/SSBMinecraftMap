damage @s 6 bypass:player_attack by @p[tag=Darius]
function kits:char/darius/applystacks
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..15] ~ ~ ~ 4 0 1
effect give @p[tag=Darius] instant_health
tag @s add DariusDecimated
