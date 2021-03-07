### Filename: trigger.mcfunction
### Resource: smplore:bloodlust/trigger
### Title: Bloodlust Conditional Trigger
### Summary: Updates bloodlust if the feature is enabled.
### Execute: N/A
# ----------------------------------------------------------------
execute if score $global bloodlust.enable matches 1.. run function smplore:bloodlust/update