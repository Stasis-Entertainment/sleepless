# apply effects based on the time awake score
execute if score @s sleepless.timeAwake matches 0..23999 run effect give @s haste 35 0 true
execute if score @s sleepless.timeAwake matches 0..23999 run effect give @s speed 35 0 true
execute if score @s sleepless.timeAwake matches 120000..239999 run effect give @s slowness 35 0 true
execute if score @s sleepless.timeAwake matches 120000..239999 run effect give @s weakness 35 0 true
execute if score @s sleepless.timeAwake matches 240000..359999 run effect give @s slowness 35 1 true
execute if score @s sleepless.timeAwake matches 240000..359999 run effect give @s weakness 35 1 true
execute if score @s sleepless.timeAwake matches 360000.. run effect give @s slowness 35 2 true
execute if score @s sleepless.timeAwake matches 360000.. run effect give @s weakness 35 2 true
execute if score @s sleepless.timeAwake matches 360000..479999 run effect give @s mining_fatigue 35 0 true
execute if score @s sleepless.timeAwake matches 480000.. run effect give @s hunger 35 0 true
execute if score @s sleepless.timeAwake matches 480000.. run effect give @s mining_fatigue 35 1 true