
scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add secondformwater
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"water.second.chat","color":"blue"}]
########################DECORATION###########################

playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 2 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 1 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 2 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 1.5 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 0 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 0 1
playsound block.water.ambient voice @a ~ ~ ~ 1 0 1

execute as @s at @s anchored eyes rotated ~90 0 positioned ^ ^ ^-1 run function demon:breathings/water/second/particles

tag @e[distance=..2.5,tag=!secondformwater,type=!#demon:nokill] add kill

execute as @s at @s if block ~ ~-1 ~ air run effect give @s levitation 1 1 true

###
tellraw @a[tag=debug] "second form water"

execute as @s run function demon:breathings/manager/cooldowns/fast

execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 15 minecraft:player_attack by @a[tag=secondformwater,limit=1,sort=nearest]

tellraw @a[tag=debug] {"text":"damage 15","color":"blue"}
schedule function demon:breathings/water/second/remove 2t
