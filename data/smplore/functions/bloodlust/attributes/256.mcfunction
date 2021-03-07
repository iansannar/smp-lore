### Filename: 256.mcfunction
### Resource: smplore:bloodlust/attributes/4
### Title: Bloodlust +256 Hearts
### Summary: Adds a +512 generic.max_health attribute modifier and subtracts 256 from the temporary w variable.
### Execute: as
# ----------------------------------------------------------------
attribute @s generic.max_health modifier add bc61498f-dc0b-4297-b4cd-0389be774209 "bloodlust" 512.0 add
scoreboard players remove $temporary w 256