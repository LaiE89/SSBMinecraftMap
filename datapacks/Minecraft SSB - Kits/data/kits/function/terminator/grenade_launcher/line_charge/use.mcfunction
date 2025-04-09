## When Line Charge is Used
# Summons necessary elements
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:70,Tags:["TerminatorLineChargeUseMarker"]}
summon armor_stand ~ ~0.5 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["TerminatorLineChargeGrenade","projectile"],Pose:{Head:[0f,0f,180f]},DisabledSlots:4144959,equipment:{head:{id:player_head,components:{profile:{id:[I;880357396,1879261975,-2030399572,572816016],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2U1NWM1YWJjZTdhNzkyNjRhNDg5MmQ2ODgwNmVhYWZlMzcwYTBlNGRkMjZmNTYxOTFmN2MxODhmMDFlZDcyNiJ9fX0="}]}},Count:1}}}

# Launches grenade
data modify entity @e[limit=1,sort=nearest,tag=TerminatorLineChargeGrenade,type=armor_stand] Rotation[0] set from entity @s Rotation[0]
execute as @e[limit=1,sort=nearest,tag=TerminatorLineChargeGrenade,type=armor_stand] at @s run function kits:terminator/grenade_launcher/line_charge/launch

# Terminate passive
function kits:terminator/terminate/use_ability

# Sound
playsound minecraft:entity.ender_dragon.shoot neutral @a[distance=..20] ~ ~ ~ 1 0.5 1

# Reset ability cooldown
scoreboard players set @s kits.ability5CD 0
