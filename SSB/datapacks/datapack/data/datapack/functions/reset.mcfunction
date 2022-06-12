effect give @s minecraft:instant_health 1 9 true
effect give @s minecraft:saturation 1 9 true
effect clear @s minecraft:absorption
effect clear @s minecraft:speed
effect clear @s minecraft:jump_boost
effect clear @s minecraft:poison
effect clear @s minecraft:wither
effect clear @s minecraft:blindness
effect clear @s minecraft:haste
effect clear @s minecraft:nausea
effect clear @s minecraft:fire_resistance
effect clear @s minecraft:resistance
effect clear @s minecraft:glowing
effect clear @s minecraft:levitation
effect clear @s minecraft:night_vision
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:regeneration
effect clear @s minecraft:strength
effect clear @s minecraft:slowness
effect clear @s minecraft:slow_falling
effect clear @s minecraft:health_boost
effect clear @s minecraft:weakness
clear @s
gamemode adventure @s
xp set @s 0 levels
spawnpoint @s -192 72 80
setworldspawn -192 72 80

function datapack:kitnames

# Kit Tags
tag @s remove ArcueidRed
tag @s remove ArcueidChained
tag @s remove KiryuGrabbed
tag @s remove KiryuBrawler
tag @s remove KiryuRush
tag @s remove KiryuBeast
tag @s remove KiryuCountering
tag @s remove KanekiKakuja
tag @s remove DenjiChainsaw
tag @s remove DenjiChainedGrab
tag @s remove DenjiChained
tag @s remove LucinaDancingBlade
tag @s remove LucinaKnockback
tag @s remove LucinaCountering
tag @s remove LucinaDolphinSlashed
tag @s remove AbianMaxAutism
tag @s remove AbianCanSwap
tag @s remove SitoePossessing
tag @s remove SitoePossessed
tag @s remove SitoeGettingRitualed
tag @s remove LuffyKB
tag @s remove LuffyKB2
tag @s remove LuffyUsingPistol
tag @s remove LuffyPistolDestination
tag @s remove LuffyGatling
tag @s remove LuffyGrabbed
tag @s remove DariusNoxianMight
tag @s remove DariusDecimated
tag @s remove DariusRage
tag @s remove EkkoDiving
tag @s remove EkkoPassiveCD
tag @s remove EkkoTimeWinderHit
tag @s remove EkkoTimeWinderHit2
tag @s remove PyramidHeadKB
tag @s remove IreliaMarked
tag @s remove IreliaBladesurge
tag @s remove IreliaMarked2
tag @s remove IreliaBladesurging
tag @s remove IreliaDefiantDance
tag @s remove IreliaIonianFervor
tag @s remove IreliaHitByDuet
tag @s remove DvaNoMech
tag @s remove DvaMicroMissiles
tag @s remove DvaBooster
tag @s remove DvaDefenseMatrix
tag @s remove GenjiDoubleJumping
tag @s remove GenjiDragonblade
tag @s remove GenjiDeflect
tag @s remove ChosenUndeadResting
tag @s remove ChosenUndeadTranquilWalk
tag @s remove ChosenUndeadFirestorm
tag @s remove Mob100Percent
tag @s remove MobAbsorb
tag @s remove KilluaKnockback
tag @s remove KilluaLightningPalm
tag @s remove KilluaYoyoKnockback
tag @s remove BradJoy
tag @s remove BradCry
tag @s remove BradHorsestance
tag @s remove BradBusterPunches
tag @s remove BradMachineGunFist
tag @s remove GutsCleaved
tag @s remove GutsBleeding
tag @s remove GutsPivotSwing
tag @s remove GutsBerserker
tag @s remove ZedNoSwitch
tag @s remove ZedNoSwitch2
tag @s remove ZedDeathmarked
tag @s remove TanjiroConstantFlux
tag @s remove TanjiroFiregod
tag @s remove BruceIronWill
tag @s remove BruceMarked
tag @s remove BruceFlyingKick
tag @s remove BruceDragonKicked
tag @s remove DoomfistPunching
tag @s remove DoomfistCharge
tag @s remove DoomfistMeteor
tag @s remove DoomfistMax
tag @s remove DoomfistKB
tag @s remove SpawnChainsKB
tag @s remove SpawnShootingAK
tag @s remove SpawnBolts
tag @s remove SpawnBurning
tag @s remove NessInThunder
tag @s remove NessPKRocket
tag @e remove NessYoyoKB
tag @s remove NessPKFlash
tag @s remove NessCrying
tag @s remove DoomslayerHooked
tag @s remove DoomslayerShotgunned
tag @s remove DoomslayerShotgunned2
tag @s remove RyzeInPrison
tag @s remove RyzeFlux
tag @s remove KilluaGodspeed
tag @s remove AlucardWraith
tag @s remove JaxCounterstrike
tag @s remove JaxLeapstrikeTo
tag @s remove JaxEmpowered
tag @s remove VergilJudgementCut
tag @s remove VergilDash
tag @s remove VergilInvis
tag @s remove VergilDevilTrigger
tag @s remove TracerReload
tag @s remove TracerBlinkCD
tag @s remove TracerRecall
tag @s remove TracerPulseBomb
tag @s remove SaberStrikeAir
tag @s remove SaberStrikeAir2
tag @s remove SaberExcalibur

# PVP Tags
tag @s remove Loser
tag @s remove PlayerArena
tag @s remove Player
tag @s remove Player1
tag @s remove Player2
tag @s remove Player3
tag @s remove Player4
tag @s remove PrepareForBattle
tag @s remove InMenu
tag @s remove UpdatingStats

# Labyrinth Tags
tag @s remove pedobeargrabbed
tag @s remove ZoddBleeding
tag @s remove CinderCleaveDamage
tag @s remove LabyrinthTunnel
tag @s remove LabyrinthGym
tag @s remove LabyrinthBasement
tag @s remove LabyrinthCinder
tag @s remove LabyrinthSchool
tag @s remove LabyrinthUnderground
tag @s remove LabyrinthPrison
tag @s remove InLabyrinth

scoreboard players reset @s BossMusicTimer
scoreboard players reset @s BossTimer
scoreboard players reset @s LabyrinthTimer
scoreboard players reset @s LabyrinthTimer2
scoreboard players reset @s LabyrinthTimer3

scoreboard players reset @s Timer
scoreboard players reset @s Timer2
scoreboard players reset @s Timer3
scoreboard players reset @s Timer4
scoreboard players reset @s Timer5
scoreboard players reset @s Timer6
scoreboard players reset @s Timer7
scoreboard players reset @s Timer8
scoreboard players reset @s Timer9

scoreboard players reset @s Ability1CD
scoreboard players reset @s Ability2CD
scoreboard players reset @s Ability3CD
scoreboard players reset @s Ability4CD
scoreboard players reset @s Ability5CD

scoreboard players reset @s Basic_ShiftOn
scoreboard players reset @s Basic_ShiftOff

scoreboard players reset @s RaycastTimer
scoreboard players reset @s RaycastTimer2
scoreboard players reset @s RaycastTimer3
scoreboard players reset @s RaycastTimer4

scoreboard players reset @s DariusPassive
scoreboard players reset @s DariusBleedTime
scoreboard players reset @s RyzeFluxTimer
scoreboard players reset @s EkkoResonance
scoreboard players reset @s EkkoPassiveTimer
scoreboard players reset @s IreliaMarkTimer

scoreboard players reset @s Basic_DeathTime
scoreboard players reset @a PVP_PrepReset
scoreboard players reset @a PVP_PrepReset2
scoreboard players reset @s PVP_Lives
scoreboard players reset @s PVP_InRoom
scoreboard players reset @s PVP_PrepTime
scoreboard players reset @s PVP_Winner

attribute @s minecraft:generic.knockback_resistance base set 0
kill @e[type=armor_stand,tag=!cosmetics,x=-184,y=72,z=72,dx=-16,dy=3,dz=17]
kill @e[type=arrow,nbt={inGround:1b}]
stopsound @s