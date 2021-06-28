### Filename: final_death.mcfunction
### Resource: smplore:lives/final_death
### Title: Final Canon Death
### Summary: Turns a player into a ghost.
### Execute: as
# ----------------------------------------------------------------
tag @s add smplore.lives.dead
advancement grant @s only smplore:last_canon_death
gamemode adventure @s