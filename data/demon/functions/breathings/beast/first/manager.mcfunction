scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add firstformbeast
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"beast.first.chat","color":"gray"}]
########################DECORATION###########################
#particle
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 2
function demon:particles/beast/first/manager
###
execute positioned ^ ^ ^1 run tag @e[tag=!firstformbeast,distance=..1.8,type=!#demon:nokill] add 1bf

tellraw @a[tag=debug] "first form beast"

execute as @s run function demon:breathings/manager/cooldowns/fast

execute as @e[tag=1bf,type=!#demon:nokill] at @s run damage @s 10 minecraft:player_attack by @a[tag=firstformbeast,limit=1,sort=nearest]

tag @s remove firstformbeast

tag @e[tag=1bf] remove 1bf
tellraw @a[tag=debug] {"text":"damage 10","color":"gray"}
