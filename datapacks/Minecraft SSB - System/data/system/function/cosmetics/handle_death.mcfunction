tag @s add system.cosmetics.death

# Kill effects
execute on attacker unless score @s system.cosmetics.killEffectId matches 0.. as @p[tag=system.cosmetics.death] at @s run function system:cosmetics/kill_effects/blood
#execute on attacker if score @s system.cosmetics.killEffectId matches 0 as @p[tag=system.cosmetics.death] at @s run function system:cosmetics/kill_effects/smoke

# Kill messages
execute on attacker unless score @s system.cosmetics.killMessageId matches 0.. run function system:cosmetics/kill_messages/default

tag @s remove system.cosmetics.death