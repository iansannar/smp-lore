### Filename: tick.mcfunction
### Resource: smplore:tick
### Title: Datapack tick function
### Summary: Runs every game tick.
### Execute: N/A
# ----------------------------------------------------------------

## Triggers
# ----------------------------------------------------------------
execute as @a[scores={event.death=1}] at @s run function #minecraft:event/death
execute as @a[scores={event.join=1}] at @s run function #minecraft:event/join
execute as @e[type=player,scores={event.respawn=1}] at @s run function #minecraft:event/respawn

## Canon Lives
# Display particles around canonically dead players
# ----------------------------------------------------------------
execute if predicate smplore:chance/one_in_ten as @a[tag=smplore.lives.dead] at @s run particle minecraft:poof ~ ~0.5 ~ 0.5 0.5 0.5 0 1

## Protected/Canon Items
# ----------------------------------------------------------------
execute as @a[scores={protected_item=1}] at @s run function smplore:protected_item/try
execute as @e[type=item, nbt={Item:{tag:{Tags:["smplore.protected_item"]}}}] at @s run function smplore:protected_item/tick

## Bloodlust
# ----------------------------------------------------------------
execute if score $global bloodlust.enable matches 1.. run function smplore:bloodlust/bossbar/tick