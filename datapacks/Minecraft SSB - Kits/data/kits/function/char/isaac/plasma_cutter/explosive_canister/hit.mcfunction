## Execute at Enemy Hit by Explosion While Explosive is Stationary
# Damage
damage @s 9 bypass:player_attack by @e[type=armor_stand,tag=IsaacObjectExplosive,limit=1,sort=nearest] from @p[tag=Isaac]

# Item drops passive
function kits:char/isaac/item_drops/drop

# Knockback
scoreboard players set @s kits.raycastTick 0
execute at @s facing entity @e[type=armor_stand,tag=IsaacObjectExplosive,limit=1,sort=nearest] feet rotated ~ 0 run function kits:char/isaac/plasma_cutter/explosive_canister/kb

# Particles
particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.5 25 force
