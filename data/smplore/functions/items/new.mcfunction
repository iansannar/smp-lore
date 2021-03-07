### Filename: new.mcfunction
### Resource: smplore:items/new
### Title: Canon Item Creation Check
### Summary: Attempts to create a new canon item, if requirements are met.
### Execute: as
# ----------------------------------------------------------------
advancement grant @s only smplore:canon_item

## Make an entity version of the item in weapon.mainhand and add the Canon item tag
# I have to do this because I can't directly edit player inventory NBT.
# This can be rewritten much more cleanly once /item gets added.
# ----------------------------------------------------------------
summon item ~ ~ ~ {Item: {id: "minecraft:knowledge_book", Count: 1}, Invulnerable: true, Tags: ["CanonItemEntity"]}
data modify entity @e[type=item, tag=CanonItemEntity, nbt={Age: 0s}, distance=..1, sort=nearest, limit=1] Item set from entity @s SelectedItem
data modify entity @e[type=item, tag=CanonItemEntity, nbt={Age: 0s}, distance=..1, sort=nearest, limit=1] Item.tag merge value {Canon: true}

## Apply custom lore to the item entity
# This replaces the item in weapon.mainhand with a book containing the canon item's lore, then copies the lore to the item entity.
# This also can be rewritten much more cleanly once /item gets added.
# ----------------------------------------------------------------
loot replace entity @s weapon.mainhand loot smplore:utility/canon_item_lore_book
data modify entity @e[type=item, tag=CanonItemEntity, nbt={Age: 0s}, distance=..1, sort=nearest, limit=1] Item.tag.display.Lore append from entity @s SelectedItem.tag.display.Name

## Display announcement of item canonization
# This also uses the canon item lore hack book, which is still in weapon.mainhand/SelectedItem
# ----------------------------------------------------------------
tellraw @a ["",{"nbt":"SelectedItem.tag.display.Lore[0]","entity":"@s","interpret":true},{"text":" has canonized an item: ","color":"red","italic":false},{"nbt":"Item.tag.display.Name","entity":"@e[type=item,tag=CanonItemEntity, nbt={Age: 0s}, distance=..1, sort=nearest, limit=1]","interpret":true}]

## Remove canon item lore hack book
# ----------------------------------------------------------------
clear @s minecraft:knowledge_book{CanonItemLoreHack:true}