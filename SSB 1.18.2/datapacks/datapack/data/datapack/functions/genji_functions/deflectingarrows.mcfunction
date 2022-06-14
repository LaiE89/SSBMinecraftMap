particle minecraft:sweep_attack ^ ^1.5 ^1
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20]
tag @e[type=#minecraft:arrows,tag=!GenjiDeflectArrow,distance=..5] add launch
tag @e[type=#minecraft:arrows,tag=!GenjiDeflectArrow,distance=..5] add GenjiDeflectArrow