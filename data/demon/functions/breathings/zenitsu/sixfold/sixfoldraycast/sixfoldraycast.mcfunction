#Set tag just to not cofuse me

########################DECORATION###########################
particle flash ~ ~ ~ 
playsound entity.generic.explode ambient @s ~ ~0.1 ~ 1 1
playsound entity.lightning_bolt.impact ambient @s ~ ~0.1 ~ 10 0.9

##define something before the raycast
effect give @s minecraft:levitation 1 255 true

#set range
scoreboard players set @s range 20
#function
execute as @s at @s anchored eyes run function demon:raycast/zenitsu/sixfold/raycastzenitsu
execute as @e[tag=zenitsuendraysixfold,type=armor_stand] at @s rotated as @a[tag=zenitsudoingsixfold] run tp ~ ~ ~
tp @s @e[tag=zenitsuendraysixfold,type=armor_stand,limit=1]
kill @e[type=armor_stand,tag=zenitsuendraysixfold]
