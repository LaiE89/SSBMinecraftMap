## Assigns Tasks to Specific Area Effect Clouds
# SPAS-12
execute if entity @s[tag=TerminatorSpasBullet] run function kits:char/terminator/shotgun/shoot/main

# M79 Grenade Launcher
execute if entity @s[tag=TerminatorHLVGrenade] run function kits:char/terminator/grenade_launcher/hasta_la_vista/main
execute if entity @s[tag=TerminatorHLVGrenadeFireAnimation] run function kits:char/terminator/grenade_launcher/hasta_la_vista/animation/animate
