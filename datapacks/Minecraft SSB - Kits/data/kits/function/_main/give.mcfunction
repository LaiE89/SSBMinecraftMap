## Gives a Kit Based on the Assigned Tag
# kits
execute if score @s kits.id matches 1 run function kits:2b/kit
execute if score @s kits.id matches 2 run function kits:abian/kit
execute if score @s kits.id matches 3 run function kits:alucard/kit
execute if score @s kits.id matches 4 run function kits:arcueid/kit
execute if score @s kits.id matches 5 run function kits:brad/kit
execute if score @s kits.id matches 6 run function kits:brucelee/kit
execute if score @s kits.id matches 7 run function kits:chosenundead/kit
execute if score @s kits.id matches 8 run function kits:cynthia/kit
execute if score @s kits.id matches 9 run function kits:darius/kit
execute if score @s kits.id matches 10 run function kits:chainsawman/kit
execute if score @s kits.id matches 11 run function kits:doomfist/kit
execute if score @s kits.id matches 12 run function kits:doomslayer/kit
execute if score @s kits.id matches 13 run function kits:dragonborn/kit
execute if score @s kits.id matches 14 run function kits:edward/kit
execute if score @s kits.id matches 15 run function kits:ekko/kit
execute if score @s kits.id matches 16 run function kits:gojo/kit
execute if score @s kits.id matches 17 run function kits:guts/kit
execute if score @s kits.id matches 18 run function kits:irelia/kit
execute if score @s kits.id matches 19 run function kits:isaac/kit
execute if score @s kits.id matches 20 run function kits:itadori/kit
execute if score @s kits.id matches 21 run function kits:jacket/kit
execute if score @s kits.id matches 22 run function kits:jax/kit
execute if score @s kits.id matches 23 run function kits:kaneki/kit
execute if score @s kits.id matches 24 run function kits:killua/kit
execute if score @s kits.id matches 25 run function kits:kirito/kit
execute if score @s kits.id matches 26 run function kits:kiryu/kit
execute if score @s kits.id matches 27 run function kits:kratos/kit
execute if score @s kits.id matches 28 run function kits:lucina/kit
execute if score @s kits.id matches 29 run function kits:luffy/kit
execute if score @s kits.id matches 30 run function kits:midoriya/kit
execute if score @s kits.id matches 31 run function kits:mob/kit
execute if score @s kits.id matches 32 run function kits:ness/kit
execute if score @s kits.id matches 33 run function kits:noctis/kit
execute if score @s kits.id matches 34 run function kits:raiden/kit
execute if score @s kits.id matches 35 run function kits:ryze/kit
execute if score @s kits.id matches 36 run function kits:saber/kit
execute if score @s kits.id matches 37 run function kits:sans/kit
execute if score @s kits.id matches 38 run function kits:siris/kit
execute if score @s kits.id matches 39 run function kits:laieth/kit
execute if score @s kits.id matches 40 run function kits:spawn/kit
execute if score @s kits.id matches 41 run function kits:tanjiro/kit
execute if score @s kits.id matches 42 run function kits:terminator/kit
execute if score @s kits.id matches 43 run function kits:trailblazer/kit
execute if score @s kits.id matches 44 run function kits:vergil/kit
execute if score @s kits.id matches 45 run function kits:zed/kit

# base items
execute unless score @s kits.id matches 1.. run function kits:kit
give @s golden_carrot 64