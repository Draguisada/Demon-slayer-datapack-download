scoreboard players set @s detectclick 0 
#Set tag just to not cofuse me
tag @s add fourthformwater
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"water.four.chat","color":"blue"}]
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

tellraw @a[tag=debug] "fourth form water"

#set range
scoreboard players set @s range 12
#function
execute as @s at @s anchored eyes run function demon:raycast/water/four/raycast

execute as @s run function demon:breathings/manager/cooldowns/medium
execute as @e[tag=waterfourend] at @s rotated as @a[tag=fourthformwater] run tp ~ ~ ~
tp @s @e[tag=waterfourend,type=armor_stand,limit=1]
execute at @e[tag=kill] facing 0 40 0 positioned ~ ~0.5 ~ run function demon:breathings/water/four/particles
execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=fourthformwater,limit=1,sort=nearest]

kill @e[type=armor_stand,tag=waterfourend]


tellraw @a[tag=debug] {"text":"damage 20","color":"blue"}
tag @s remove fourthformwater