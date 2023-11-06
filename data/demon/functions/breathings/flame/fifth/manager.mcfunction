scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add tiger
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"flame.fifth.chat","color":"red"}]
########################DECORATION###########################
#Sumon dragon
function demon:breathings/flame/fifth/tiger/release

tellraw @a[tag=debug] "manager fifth flame"

playsound item.firecharge.use ambient @a ~ ~ ~ 1 2 
playsound item.firecharge.use ambient @a ~ ~ ~ 1 1
playsound item.firecharge.use ambient @a ~ ~ ~ 1 1.5
playsound block.fire.extinguish ambient @a ~ ~ ~ 1 2
playsound entity.polar_bear.warning ambient @a ~ ~ ~ 10 0.1
playsound entity.ender_dragon.growl ambient @a ~ ~ ~ 10 0.1

execute as @s run function demon:breathings/manager/cooldowns/slow
tellraw @a[tag=debug] {"text":"damage 35","color":"red"}
kill @e[tag=tigerkill]
tag @s remove flameform
tag @s add flametigerorigin
