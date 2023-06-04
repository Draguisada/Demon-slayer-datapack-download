scoreboard players set @s detectclick 0 
#Set tag just to not cofuse me
tag @s add fifthformwater
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"water.fifth.chat","color":"blue"}]
########################DECORATION###########################
particle dust 0 0.4 1 1 ~ ~-0.5 ~ 0 0 0 1 10 normal @a[distance=..30]
particle dust 0 0.8 1 1 ~ ~-0.5 ~ 0 0 0 1 10 normal @a[distance=..30]
particle dust 0 0.306 0.769 1 ~ ~-0.5 ~ 0 0 0 1 10 normal @a[distance=..30]
particle dust 0 0.765 1 1 ~ ~-0.5 ~ 0 0 0 1 10 normal @a[distance=..30]
particle rain ~ ~-0.5 ~ 0 0 0 0.4 100 normal @a[distance=..30]

playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 2 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 1 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 2 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 1.5 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 0 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 0 1
#Range
scoreboard players set @s range 12
#Function raycast
execute as @s at @s anchored eyes run function demon:raycast/water/fifth/raycast
###
tellraw @a[tag=debug] "five form water"

execute as @s run function demon:breathings/manager/cooldowns/medium
execute as @e[tag=waterfifthend] at @s rotated as @a[tag=fifthformwater] run tp ~ ~ ~
tp @s @e[tag=waterfifthend,type=armor_stand,limit=1]
kill @e[type=armor_stand,tag=waterfifthend]

execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=fifthformwater,limit=1,sort=nearest]

tag @s remove fifthformwater


tellraw @a[tag=debug] {"text":"damage 20","color":"blue"}



