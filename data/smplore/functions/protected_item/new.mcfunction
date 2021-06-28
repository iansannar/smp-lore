### Filename: new.mcfunction
### Resource: smplore:protected_item/new
### Title: Protected Item Creation Check
### Summary: Attempts to create a new protected item, if requirements are met.
### Execute: as
# ----------------------------------------------------------------
advancement grant @s only smplore:bless_item
xp add @s -50 levels

## Apply custom lore and tag to the item
# ---------------------------------------------------------------- 
item modify entity @s weapon.mainhand smplore:protected_item
item modify entity @s[nbt={SelectedItem:{id:"minecraft:ghast_tear"}}] weapon.mainhand smplore:protected_item_destroyer