scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add firstformwater
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"water.first.chat","color":"blue"}]
########################DECORATION###########################
#particle
execute positioned ^ ^0.5 ^ rotated ~ ~ rotated ~90 0 run function demon:breathings/water/first/managerparticles

playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 2 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 1 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 2 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 1.5 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 0 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 0 1

###
execute positioned ^2 ^1 ^1 run tag @e[tag=!firstformwater,distance=..1.5,type=!#demon:nokill] add kill
execute positioned ^1 ^1 ^1 run tag @e[tag=!firstformwater,distance=..1.5,type=!#demon:nokill] add kill
execute positioned ^ ^1 ^1 run tag @e[tag=!firstformwater,distance=..1.5,type=!#demon:nokill] add kill
execute positioned ^-1 ^1 ^1 run tag @e[tag=!firstformwater,distance=..1.5,type=!#demon:nokill] add kill
execute positioned ^-2 ^1 ^1 run tag @e[tag=!firstformwater,distance=..1.5,type=!#demon:nokill] add kill


tellraw @a[tag=debug] "first form water"

execute as @s run function demon:breathings/manager/cooldowns/fast

execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 15 minecraft:player_attack by @a[tag=firstformwater,limit=1,sort=nearest]

tag @s remove firstformwater


tellraw @a[tag=debug] {"text":"damage 15","color":"blue"}
