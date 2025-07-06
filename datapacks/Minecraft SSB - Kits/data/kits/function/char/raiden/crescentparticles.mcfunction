#particle dust{color:[1.000,0.000,0.000],scale:1} ^ ^1.5 ^4 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.000],scale:1} ^ ^1.5 ^3.5 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.000],scale:1} ^ ^1.5 ^3 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.000],scale:1} ^ ^1.5 ^2.5 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.000],scale:1} ^ ^1.5 ^2 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.000],scale:1} ^ ^1.5 ^1.5 0 0 0 0 1 force
particle dust{color:[0.502,0.502,0.502],scale:1} ^ ^1.5 ^1 0 0 0 0 1 force
particle dust{color:[0.502,0.502,0.502],scale:1} ^ ^1.5 ^0.5 0 0 0 0 1 force
tp @s ~ ~ ~ ~ ~-5
execute unless entity @s[x_rotation=-90] at @s run function kits:char/raiden/crescentparticles
