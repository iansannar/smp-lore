### Filename: load.mcfunction
### Resource: smplore:load
### Title: Datapack load function
### Summary: Runs once each time the datapack is loaded (on world load or through the use of the /reload command).
### Execute: N/A
# ----------------------------------------------------------------
tellraw @a ["",{"text":"SMP Lore ","color":"blue","clickEvent":{"action":"run_command","value":"/function smplore:help"}},{"text":"datapack loaded."}]

## General Setup
# ----------------------------------------------------------------
# Temporary variables (use with the fake $temporary player)
scoreboard objectives add w dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

# Trigger variables (to detect certain events)
scoreboard objectives add event.death deathCount "== 1 on players who have just died"
scoreboard objectives add event.login minecraft.custom:leave_game "== 1 on players who are just logging back in"

## Canon Lives Setup
# Allows certain deaths to be semi-permanent for story purposes.
# Players who lose all of their canon lives become ghosts and are limited in their ability to interact with the world.
# ----------------------------------------------------------------
scoreboard objectives add lives dummy "Current amount of canon lives"
scoreboard objectives add lives.enable dummy "Whether to enable canon life mechanics."
scoreboard objectives add lives.initial dummy "Inital amount of canon lives"

## Canon Items Setup
# Allows certain items to be marked as unique and extremely resistant to environmental hazards.
# ----------------------------------------------------------------

## Bloodlust Setup
# Bloodlust increases a player's maximum health by 2 (1 heart) each time they kill another player.
# The player with the most kills (minimum of 10) has their health displayed in a boss bar.
# A player's bloodlust resets when they die.
# ----------------------------------------------------------------
scoreboard objectives add bloodlust totalKillCount "Players killed since last death."
scoreboard objectives add bloodlust.enable dummy "Whether to enable bloodlust mechanics."
scoreboard objectives add bossbar.decay dummy "Ticks until depleted boss bar vanishes."
bossbar add smplore:bloodlust {"text":"Eleven"}
bossbar set smplore:bloodlust color red

## Configuration
# ----------------------------------------------------------------
# Bloodlust
scoreboard players set $global bloodlust.enable 1

# Canon Lives
scoreboard players set $global lives.enable 1
scoreboard players set $global lives.initial 3

## Call Self-Scheduling Functions
# ----------------------------------------------------------------
function smplore:lives/dead_effects