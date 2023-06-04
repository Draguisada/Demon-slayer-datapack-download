scoreboard players set @s detectclick 0
#Set tag just to not cofuse me
tag @s add zenitsudoing
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"text":": ","color":"yellow"},{"translate":"zenitsu.first.chat","bold": true,"color":"yellow"}]
########################DECORATION###########################
effect give @s blindness 1 10 true
particle flash ~ ~ ~ 
playsound entity.generic.explode voice @a[distance=..60] ~ ~0.1 ~ 1 1
playsound entity.lightning_bolt.impact voice @a[distance=..60] ~ ~0.1 ~ 10 0.5
playsound entity.lightning_bolt.impact voice @a[distance=..60] ~ ~0.1 ~ 5 0.1
playsound entity.lightning_bolt.impact voice @a[distance=..60] ~ ~0.1 ~ 5 0.9
playsound entity.lightning_bolt.thunder voice @a[distance=..60] ~ ~0.1 ~ 10 0.9

summon lightning_bolt ~ 0 ~

tellraw @a[tag=debug] "firstform zenitsu"


#set range
scoreboard players set @s range 20
#function
execute as @s at @s anchored eyes run function demon:raycast/zenitsu/firstform/raycastzenitsu

execute as @s run scoreboard players set @s cooldown 50
execute as @e[tag=zenitsuendray,type=armor_stand] at @s rotated as @a[tag=zenitsudoing] run tp ~ ~ ~
tp @s @e[tag=zenitsuendray,type=armor_stand,limit=1]
kill @e[type=armor_stand,tag=zenitsuendray]
tag @e[tag=kill,type=!#demon:nokill] add kill
execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=zenitsudoing,limit=1,sort=nearest]
tellraw @a[tag=debug] {"text":"damage 20","color":"yellow"}
tag @s remove zenitsudoing
tag @a remove kill