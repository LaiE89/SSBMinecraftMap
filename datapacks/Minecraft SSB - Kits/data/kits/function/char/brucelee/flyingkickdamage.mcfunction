damage @s 6 bypass:player_attack by @p[tag=Brucelee]
effect give @p[tag=Brucelee] minecraft:resistance 1 4 true
schedule function kits:char/brucelee/removeres 5t replace
scoreboard players reset @p[tag=Brucelee] kits.timer2
tag @s remove BruceMarked
tag @p[tag=BruceFlyingKick] remove BruceFlyingKick
