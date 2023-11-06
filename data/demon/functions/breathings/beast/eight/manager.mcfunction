scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add eightbeast
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"beast.eight.chat","color":"gray"}]
########################DECORATION###########################
#particle
playsound minecraft:entity.evoker.prepare_attack voice @a ~ ~ ~ 2 0
effect give @s speed 15 3 true


tellraw @a[tag=debug] "eight form beast"

execute as @s run function demon:breathings/manager/cooldowns/slow

tag @s remove eightbeast

