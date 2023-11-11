scoreboard players set @s ds_detectclick 0
#Set tag just to not cofuse me
tag @s add god
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"text":": ","color":"yellow"},{"translate":"zenitsu.god.chat","bold": true,"color":"yellow"}]
########################DECORATION###########################
effect give @s blindness 1 10 true
particle flash ~ ~ ~ 0.3 0.3 0.3 1 20 normal
playsound entity.generic.explode voice @a[distance=..60] ~ ~0.1 ~ 1 1
playsound entity.lightning_bolt.impact voice @a[distance=..60] ~ ~0.1 ~ 10 0.5
playsound entity.lightning_bolt.impact voice @a[distance=..60] ~ ~0.1 ~ 5 0.1
playsound entity.lightning_bolt.impact voice @a[distance=..60] ~ ~0.1 ~ 5 0.9
playsound entity.lightning_bolt.thunder voice @a[distance=..60] ~ ~0.1 ~ 10 0.9

summon lightning_bolt ~ 0 ~
summon lightning_bolt ~ 0 ~
summon lightning_bolt ~ 0 ~
summon lightning_bolt ~ 0 ~


tellraw @a[tag=debug] "firstform godspeed zenitsu"


#set range
scoreboard players set @s ds_range 32
#function
execute as @s at @s anchored eyes run function demon:raycast/zenitsu/godspeed/manager

execute as @s run function demon:breathings/manager/cooldowns/slow



execute as @e[tag=godend,type=armor_stand] at @s rotated as @a[tag=god] run tp ~ ~ ~
tp @s @e[tag=godend,type=armor_stand,limit=1]
kill @e[type=armor_stand,tag=godend]
execute as @e[tag=godspeed,type=!#demon:nokill] at @s run damage @s 30 minecraft:player_attack by @a[tag=god,limit=1,sort=nearest]
tellraw @a[tag=debug] {"text":"damage 30","color":"yellow"}
tag @s remove god
tag @e[tag=godspeed] remove godspeed

