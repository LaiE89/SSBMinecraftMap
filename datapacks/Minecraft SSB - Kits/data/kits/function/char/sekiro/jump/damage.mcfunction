function kits:char/sekiro/posture/posturegain {Posture:20}
damage @s 2 bypass:player_attack by @p[tag=Sekiro]
effect give @s minecraft:slowness 1 3 true
effect give @s[type=!minecraft:player] minecraft:weakness 1 2 true
particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0.1 10