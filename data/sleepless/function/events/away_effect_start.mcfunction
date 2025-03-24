# Show the various effects and display a warning for all players affected by the away effect
# set screen effect fade time
title @s times 60s 0 0
# begin screen effect
title @s title {"font":"sleepless:fade","text":"\uBC00","color":"#4e5c24"}
# begin sound effect
playsound sleepless:away_effect master @s ~ ~ ~ 1 1 1
# show warning text and sound
playsound sleepless:wary master @s ~ ~ ~ 1 1 1
title @s actionbar {"translate": "sleepless.time_up","color": "#444444","italic": true}
# add the tag
tag @s add sleepless.away