### Filename: 1.mcfunction
### Resource: smplore:bloodlust/attributes/1
### Title: Bloodlust +1 Heart
### Summary: Adds a +2 generic.max_health attribute modifier and subtracts 1 from the temporary w variable.
### Execute: as
# ----------------------------------------------------------------
attribute @s generic.max_health modifier add ae84d5b1-4f2f-492a-b5df-b4fceeb6ac84 "bloodlust" 2.0 add
scoreboard players remove $temporary w 1