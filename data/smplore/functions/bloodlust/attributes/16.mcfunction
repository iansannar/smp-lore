### Filename: 16.mcfunction
### Resource: smplore:bloodlust/attributes/16
### Title: Bloodlust +16 Hearts
### Summary: Adds a +16 generic.max_health attribute modifier and subtracts 16 from the temporary w variable.
### Execute: as
# ----------------------------------------------------------------
attribute @s generic.max_health modifier add 42b42672-9475-4187-a8c5-bc6529c791fe "bloodlust" 32.0 add
scoreboard players remove $temporary w 16