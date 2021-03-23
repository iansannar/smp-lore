### Filename: display.mcfunction
### Resource: smplore:lives/display
### Title: 
### Summary: 
### Execute: as
# ----------------------------------------------------------------
# Display three hearts: red are remaining lives, grey are lost lives.
execute if score $global lives.enable matches 1.. if score @s lives matches 3 run title @s title {"text":"❤ ❤ ❤","color":"red","italic":false}
execute if score $global lives.enable matches 1.. if score @s lives matches 2 run title @s title ["",{"text":"❤ ❤","color":"red","italic":false},{"text":" ❤","color":"dark_gray","italic":false}]
execute if score $global lives.enable matches 1.. if score @s lives matches 1 run title @s title ["",{"text":"❤","color":"red","italic":false},{"text":" ❤ ❤","color":"dark_gray","italic":false}]
execute if score $global lives.enable matches 1.. if score @s lives matches ..0 run title @s title {"text":"❤ ❤ ❤","color":"dark_gray","italic":false}

# Display a skull if the player is canonically dead.
title @s[tag=smplore.lives.dead] subtitle {"text":"☠","color":"dark_gray","italic":false}