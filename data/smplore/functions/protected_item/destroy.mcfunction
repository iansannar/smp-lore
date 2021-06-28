### Filename: destroy.mcfunction
### Resource: smplore:protected_item/destroy
### Title: Protected Item Destruction
### Summary: Destroys a protected item.
### Execute: as, at
# ----------------------------------------------------------------

# Destroy protected item and protected item destroyer
# ----------------------------------------------------------------
tp @s @e[type=item,nbt={Item:{tag:{Tags:["smplore.protected_item.protected_item_destroyer"]}}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{tag:{Tags:["smplore.protected_item.protected_item_destroyer"]}}},sort=nearest,limit=1]
kill @s

# Theatrics
# ----------------------------------------------------------------
execute at @s align xyz run playsound block.end_portal.spawn player @a ~ ~ ~ 1.0 0.65
execute at @s align xyz run summon lightning_bolt ~ ~ ~
execute at @s align xyz run summon minecraft:fireball ~ ~0.5 ~ {ExplosionPower:1,Motion:[0.0,-20.0,0.0],power:[0.0,-20.0,0.0],Item:{id:"minecraft:ghast_tear",Count:1},Tags:["smplore.protected_item.protected_item_destroyer"]}
execute at @s align xyz run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.25 256 force
execute at @s align xyz run setblock ~ ~-1 ~ minecraft:crying_obsidian