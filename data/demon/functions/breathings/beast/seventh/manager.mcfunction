scoreboard players set @s detectclick 0 
#Set tag just to not cofuse me
tag @s add seventhbeast
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"beast.seventh.chat","color":"gray"}]
########################DECORATION###########################
#particle
playsound minecraft:entity.evoker.prepare_attack ambient @a ~ ~ ~ 1 2
function demon:particles/beast/seventh/particles
effect give @s slowness 2 200 true
###
execute positioned ^ ^ ^1 run effect give @e[distance=..20,tag=!seventhbeast] glowing 15 2 true

tellraw @a[tag=debug] "seventh form beast"

execute as @s run scoreboard players set @s cooldown 400 

##Lol

tag @s remove seventhbeast