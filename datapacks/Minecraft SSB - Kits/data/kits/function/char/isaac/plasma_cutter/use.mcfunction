### When Using Plasma Cutter
## Plasma Cut
execute if entity @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability1CD=8..}] as @s[scores={kits.timer=1..}] run function kits:char/isaac/plasma_cutter/plasma_cut/use
execute if entity @s[scores={kits.timer=..0}] as @s[scores={kits.timer2=1..}] run function kits:char/isaac/plasma_cutter/plasma_cut/reloading

## Explosive Canister
execute if entity @s[scores={kits.criterion.shift=1..}] as @s[scores={kits.ability4CD=10..}] as @s[scores={kits.timer3=1..}] run function kits:char/isaac/plasma_cutter/explosive_canister/use
