### Filename: exists.mcfunction
### Resource: smplore:bloodlust/bossbar/exists
### Title: Existing Bloodlust Boss Bar Update
### Summary: Updates the existing bloodlust player boss bar.
### Execute: as
# ----------------------------------------------------------------
bossbar set smplore:bloodlust visible true

## Give the bossbar the proper maximum value
# Base health is 20 (10 hearts)
# Add bloodlust score twice, since 1 heart is 2 health
# ----------------------------------------------------------------
scoreboard players set $temporary w 20
scoreboard players operation $temporary w += @s bloodlust
scoreboard players operation $temporary w += @s bloodlust
execute store result bossbar smplore:bloodlust max run scoreboard players get $temporary w

## Update the other properties of the bossbar
# ----------------------------------------------------------------
execute store result bossbar smplore:bloodlust value run data get entity @s Health
bossbar set smplore:bloodlust name {"selector":"@s"}
execute at @s run bossbar set smplore:bloodlust players @a[distance=..20]