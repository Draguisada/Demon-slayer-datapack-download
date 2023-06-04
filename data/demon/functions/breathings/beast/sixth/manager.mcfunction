scoreboard players set @s detectclick 0 
#Set tag just to not cofuse me
tag @s add sixthbeast
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"beast.sixth.chat","color":"gray"}]
########################DECORATION###########################
#particle
function demon:particles/beast/first/manager
function demon:particles/beast/first/manager
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 2
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 2
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1

effect give @s slowness 1 200 true
###
execute positioned ^ ^ ^1 run tag @e[tag=!sixthbeast,distance=..1.5,type=!#demon:nokill] add kill

tellraw @a[tag=debug] "sixth form beast"

execute as @s run function demon:breathings/manager/cooldowns/medium

execute as @e[tag=kill,type=!#demon:nokill] run damage @s 20 minecraft:player_attack by @a[tag=sixthbeast,limit=1,sort=nearest]


tag @s remove sixthbeast
tag @e[tag=kill] remove kill
tellraw @a[tag=debug] {"text":"damage 20","color":"gray"}
