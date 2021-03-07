### Filename: 64.mcfunction
### Resource: smplore:bloodlust/attributes/64
### Title: Bloodlust +64 Hearts
### Summary: Adds a +128 generic.max_health attribute modifier and subtracts 64 from the temporary w variable.
### Execute: as
# ----------------------------------------------------------------
attribute @s generic.max_health modifier add ec819eaf-1d37-4003-aab1-309f9186ca3a "bloodlust" 128.0 add
scoreboard players remove $temporary w 64