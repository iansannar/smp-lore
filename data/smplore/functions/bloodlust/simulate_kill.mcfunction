### Filename: simulate_kill.mcfunction
### Resource: smplore:bloodlust/simulate_kill
### Title: (Debug) Simulate Player Kill Event
### Summary: Triggers the bloodlust mechanics as if the player had killed another player.
### Execute: as
# ----------------------------------------------------------------
advancement grant @s only smplore:event/player_kills_player
advancement grant @s only smplore:kill_another_player
scoreboard players add @s bloodlust 1
function smplore:bloodlust/update