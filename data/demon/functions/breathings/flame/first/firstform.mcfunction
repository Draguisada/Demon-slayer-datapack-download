scoreboard players set @s detectclick 0 
#Set tag just to not cofuse me
tag @s add firstformflame
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"flame.first.chat","color":"red"}]
########################DECORATION###########################
particle dust 1 0.4 0 1 ~ ~-0.5 ~ 0 0 0 1 10 normal @a[distance=..30]
particle dust 1 0.651 0 1 ~ ~-0.5 ~ 0 0 0 1 10 normal @a[distance=..30]
particle dust 0.769 0.216 0 1 ~ ~-0.5 ~ 0 0 0 1 10 normal @a[distance=..30]
particle dust 1 0.902 0 1 ~ ~-0.5 ~ 0 0 0 1 10 normal @a[distance=..30]
particle flame ~ ~-0.5 ~ 0 0 0 0.4 100 normal @a[distance=..30]

playsound item.firecharge.use ambient @a ~ ~ ~ 1 2 
playsound item.firecharge.use ambient @a ~ ~ ~ 1 1
playsound item.firecharge.use ambient @a ~ ~ ~ 1 1.5
playsound block.fire.extinguish ambient @a ~ ~ ~ 1 2
playsound minecraft:entity.ender_dragon.shoot voice @a ~ ~ ~ 1 1.2

tellraw @a[tag=debug] "first form flame"

#set range
scoreboard players set @s range 15
#function
execute as @s at @s anchored eyes run function demon:raycast/rengoku/firstform/raycast

execute as @s run function demon:breathings/manager/cooldowns/medium
execute as @e[tag=flamefirstend] at @s rotated as @a[tag=flame] run tp ~ ~ ~
tp @s @e[tag=flamefirstend,type=armor_stand,limit=1]
execute at @e[tag=killwaterfirst,type=!#demon:nokill] facing 0 40 0 positioned ~ ~0.5 ~ run function demon:particles/flame/first/manager
kill @e[type=armor_stand,tag=flamefirstend]
##
tag @e[tag=killwaterfirst,type=!#demon:nokill] add kill
execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=flameform,limit=1,sort=nearest]
tellraw @a[tag=debug] {"text":"damage 20","color":"red"}
##
tag @s remove firstformflame
tag @s remove flameform