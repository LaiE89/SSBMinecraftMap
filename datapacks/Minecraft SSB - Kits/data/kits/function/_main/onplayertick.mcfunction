# note: each kit is assigned a kitID based on latest
# note: assign the kitID to the player upon receiving the kit
## Kit Abilities
execute if score @s kits.id matches 1 run function kits:2b/main
execute if score @s kits.id matches 2 run function kits:abian/main
execute if score @s kits.id matches 3 run function kits:alucard/main
execute if score @s kits.id matches 4 run function kits:arcueid/main
execute if score @s kits.id matches 5 run function kits:brad/main
execute if score @s kits.id matches 6 run function kits:brucelee/main
execute if score @s kits.id matches 7 run function kits:chosenundead/main
execute if score @s kits.id matches 8 run function kits:cynthia/main
execute if score @s kits.id matches 9 run function kits:darius/main
execute if score @s kits.id matches 10 run function kits:chainsawman/main
execute if score @s kits.id matches 11 run function kits:doomfist/main
execute if score @s kits.id matches 12 run function kits:doomslayer/main
execute if score @s kits.id matches 13 run function kits:dragonborn/main
execute if score @s kits.id matches 14 run function kits:edward/main
execute if score @s kits.id matches 15 run function kits:ekko/main
execute if score @s kits.id matches 16 run function kits:gojo/main
execute if score @s kits.id matches 17 run function kits:guts/main
execute if score @s kits.id matches 18 run function kits:irelia/main
execute if score @s kits.id matches 19 run function kits:isaac/main
execute if score @s kits.id matches 20 run function kits:itadori/main
execute if score @s kits.id matches 21 run function kits:jacket/main
execute if score @s kits.id matches 22 run function kits:jax/main
execute if score @s kits.id matches 23 run function kits:kaneki/main
execute if score @s kits.id matches 24 run function kits:killua/main
execute if score @s kits.id matches 25 run function kits:kirito/main
execute if score @s kits.id matches 26 run function kits:kiryu/main
execute if score @s kits.id matches 27 run function kits:kratos/main
execute if score @s kits.id matches 28 run function kits:lucina/main
execute if score @s kits.id matches 29 run function kits:luffy/main
execute if score @s kits.id matches 30 run function kits:midoriya/main
execute if score @s kits.id matches 31 run function kits:mob/main
execute if score @s kits.id matches 32 run function kits:ness/main
execute if score @s kits.id matches 33 run function kits:noctis/main
execute if score @s kits.id matches 34 run function kits:raiden/main
execute if score @s kits.id matches 35 run function kits:ryze/main
execute if score @s kits.id matches 36 run function kits:saber/main
execute if score @s kits.id matches 37 run function kits:sans/main
execute if score @s kits.id matches 38 run function kits:siris/main
execute if score @s kits.id matches 39 run function kits:laieth/main
execute if score @s kits.id matches 40 run function kits:spawn/main
execute if score @s kits.id matches 41 run function kits:tanjiro/main
execute if score @s kits.id matches 42 run function kits:terminator/main
execute if score @s kits.id matches 43 run function kits:trailblazer/main
execute if score @s kits.id matches 44 run function kits:vergil/main
execute if score @s kits.id matches 45 run function kits:zed/main

## Criterion Scoreboards
scoreboard players reset @s[scores={kits.criterion.death=1..}] kits.criterion.death
scoreboard players reset @s[scores={kits.criterion.damage=1..}] kits.criterion.damage
scoreboard players reset @s[scores={kits.criterion.absorbDmg=1..}] kits.criterion.absorbDmg
scoreboard players reset @s[scores={kits.criterion.resistDmg=1..}] kits.criterion.resistDmg

scoreboard players reset @s[scores={kits.criterion.attack=1..}] kits.criterion.attack
scoreboard players reset @s[scores={kits.criterion.block=1..}] kits.criterion.block

scoreboard players reset @s[scores={kits.criterion.chest=1..}] kits.criterion.chest
scoreboard players reset @s[scores={kits.criterion.carrot=1..}] kits.criterion.carrot
scoreboard players reset @s[scores={kits.criterion.pot=1..}] kits.criterion.pot

scoreboard players reset @s[scores={kits.criterion.COS=1..}] kits.criterion.COS

scoreboard players reset @s[scores={kits.criterion.kill=1..}] kits.criterion.kill
scoreboard players reset @s[scores={kits.criterion.killPlayer=1..}] kits.criterion.killPlayer

scoreboard players set @s[scores={kits.criterion.run=1..}] kits.criterion.run 0
scoreboard players set @s[scores={kits.criterion.shift=1..}] kits.criterion.shift 0

scoreboard players reset @s[scores={kits.criterion.bow=1..}] kits.criterion.bow
scoreboard players reset @s[scores={kits.criterion.crossbow=1..}] kits.criterion.crossbow

scoreboard players reset @s[scores={kits.criterion.swordNetherite=1..}] kits.criterion.swordNetherite
scoreboard players reset @s[scores={kits.criterion.swordIron=1..}] kits.criterion.swordIron