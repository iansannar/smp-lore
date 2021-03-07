### Filename: simulate_kill.mcfunction
### Resource: smplore:bloodlust/simulate_kill
### Title: (Debug) Simulate Player Kill Event
### Summary: Triggers the bloodlust mechanics as if the player had killed another player.
### Execute: as
# ----------------------------------------------------------------
advancement grant @s only smplore:events/player_kills_player
scoreboard players add @s bloodlust 1
function smplore:bloodlust/update