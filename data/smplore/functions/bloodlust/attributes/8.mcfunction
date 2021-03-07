### Filename: 8.mcfunction
### Resource: smplore:bloodlust/attributes/4
### Title: Bloodlust +8 Hearts
### Summary: Adds a +16 generic.max_health attribute modifier and subtracts 8 from the temporary w variable.
### Execute: as
# ----------------------------------------------------------------
attribute @s generic.max_health modifier add d92ed60e-4304-436a-8ae7-242d88b1ab84 "bloodlust" 16.0 add
scoreboard players remove $temporary w 8