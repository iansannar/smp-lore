### Filename: 2.mcfunction
### Resource: smplore:bloodlust/attributes/2
### Title: Bloodlust +2 Hearts
### Summary: Adds a +4 generic.max_health attribute modifier and subtracts 2 from the temporary w variable.
### Execute: as
# ----------------------------------------------------------------
attribute @s generic.max_health modifier add cd9dcf42-a03b-4519-b12a-ec10b05d60eb "bloodlust" 4.0 add
scoreboard players remove $temporary w 2