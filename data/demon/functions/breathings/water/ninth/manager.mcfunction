scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add ninthformwater
scoreboard players set @s ds_9form 240
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"water.nine.chat","color":"blue"}]
########################DECORATION###########################
effect give @s speed 6 1 true



#
schedule function demon:breathings/water/ninth/schedule 241t 

###
tellraw @a[tag=debug] "ninth form water"

execute as @s run function demon:breathings/manager/cooldowns/medium

