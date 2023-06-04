scoreboard players set @s detectclick 0 
#Set tag just to not cofuse me
tag @s add eightformwater
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"water.eight.chat","color":"blue"}]
########################DECORATION###########################
#particle
execute positioned ^ ^0.5 ^2 rotated 0 0 run function demon:breathings/water/eight/managerparticles

playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 2 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 1 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 2 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 1.5 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 0 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 0 1
playsound weather.rain voice @a ~ ~ ~ 1 0.8
playsound weather.rain voice @a ~ ~ ~ 1 1.3
playsound weather.rain voice @a ~ ~ ~ 0.3 0.5

###
execute positioned ^ ^ ^2 run tag @e[type=!#demon:nokill,distance=..2,tag=!eightformwater] add kill

tellraw @a[tag=debug] "eight form water"

execute as @s run function demon:breathings/manager/cooldowns/slow

execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 25 minecraft:player_attack by @a[tag=eightformwater,limit=1,sort=nearest]

tag @s remove eightformwater

tellraw @a[tag=debug] {"text":"damage 25","color":"blue"}

