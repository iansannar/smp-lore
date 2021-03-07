### Filename: login.mcfunction
### Resource: smplore:triggers/login
### Title: Player login event
### Summary: Runs for each player whenever they log in.
### Execute: as, at
# ----------------------------------------------------------------
scoreboard players reset @s event.login

function smplore:lives/display