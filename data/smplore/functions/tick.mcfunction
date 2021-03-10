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
# ----------------------------------------------------------------
execute if predicate smplore:chance/one_in_five as @a[tag=lives.dead] at @s run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.5 0.5 0.5 0 1

## Canon Items
# ----------------------------------------------------------------
execute as @e[type=item, nbt={Item:{tag:{Canon:true}}}] at @s run function smplore:items/tick

## Bloodlust
# ----------------------------------------------------------------
execute if score $global bloodlust.enable matches 1.. run function smplore:bloodlust/bossbar/tick