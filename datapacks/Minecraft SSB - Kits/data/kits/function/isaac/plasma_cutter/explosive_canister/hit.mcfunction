## Execute at Enemy Hit by Explosion While Explosive is Stationary
# Damage
damage @s 6 bypass:player_attack by @p[tag=Isaac]

# Item drops passive
function kits:isaac/item_drops/drop

# Knockback
scoreboard players set @s kits.raycastTick 0
execute at @s facing entity @e[limit=1,sort=nearest,tag=IsaacObjectExplosive,type=armor_stand] feet rotated ~ 0 run function kits:isaac/plasma_cutter/explosive_canister/kb

# Particles
particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.5 25 force
