## Assigns tasks to specific area effect clouds
execute if entity @s[tag=GojoRed] run function kits:char/gojo/inherited/red/main
execute if entity @s[tag=GojoBlue] run function kits:char/gojo/inherited/blue/main
execute if entity @s[tag=GojoPurple] run function kits:char/gojo/inherited/purple/main
execute if entity @s[tag=GojoUnlimitedVoid] run function kits:char/gojo/special/void/main

execute if entity @s[tag=vfxDomain] run function kits:char/gojo/vfx/domain/run