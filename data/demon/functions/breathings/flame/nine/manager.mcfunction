#Tp
tp @s ~ ~ ~ ~ 0
#
scoreboard players set @s detectclick 0 

effect give @s minecraft:instant_damage 1 1 true
#anounce in chat in 60 blocks radious
scoreboard players set @s rengoku 20
tag @s add rengoku
#rengoku
function demon:breathings/flame/nine/tiger/release
#
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"flame.rengoku.chat","color":"red"}]
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
playsound entity.ender_dragon.growl voice @a ~ ~ ~ 1 0.45
playsound minecraft:entity.ender_dragon.shoot voice @a ~ ~ ~ 1 0.2

tellraw @a[tag=debug] "manager nine out flame"
tellraw @a[tag=debug] {"text":"damage 40","color":"red"}

#set range
scoreboard players set @s range 80
#function
execute as @s at @s anchored eyes run function demon:raycast/rengoku/rengoku/raycast


execute as @s run function demon:breathings/manager/cooldowns/sslow
execute as @e[tag=rengokuend] at @s rotated as @a[tag=flame] run tp ~ ~ ~
tp @s @e[tag=rengokuend,type=armor_stand,limit=1]
kill @e[type=armor_stand,tag=rengokuend]
execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 40 minecraft:player_attack by @a[tag=flameform,limit=1,sort=nearest]
effect give @s instant_damage 1 1 true
tag @s remove flameform