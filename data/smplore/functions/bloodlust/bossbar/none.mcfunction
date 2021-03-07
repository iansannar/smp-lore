### Filename: none.mcfunction
### Resource: smplore:bloodlust/bossbar/none
### Title: Nonexisting Bloodlust Boss Bar Update
### Summary: Updates the bloodlust player boss bar when there is no current bloodlust boss.
### Execute: N/A
# ----------------------------------------------------------------
bossbar set smplore:bloodlust value 0
execute if score $global bossbar.decay matches ..0 run bossbar set smplore:bloodlust visible false
scoreboard players remove $global bossbar.decay 1