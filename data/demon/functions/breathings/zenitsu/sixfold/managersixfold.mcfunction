scoreboard players set @s ds_cooldown 300
tag @s add zenitsudoingsixfold
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"zenitsu.sixfold.chat","bold": true,"color":"yellow"}]
#
summon marker ~ ~ ~ {Tags:["zenitsusixfoldstart"]}
scoreboard players set @s ds_detectclick 0
schedule function demon:breathings/zenitsu/sixfold/supanimationsend 1t append
execute at @e[tag=zenitsusixfoldstart,type=marker] run summon lightning_bolt ~ 0 ~
kill @e[tag=zenitsusixfoldstart,type=marker]



schedule function demon:breathings/zenitsu/sixfold/supanimationsend 16t append
schedule function demon:breathings/zenitsu/sixfold/supanimationsend 26t append
schedule function demon:breathings/zenitsu/sixfold/supanimationsend 36t append
schedule function demon:breathings/zenitsu/sixfold/supanimationsend 46t append
schedule function demon:breathings/zenitsu/sixfold/supanimationsend 56t append
schedule function demon:breathings/zenitsu/sixfold/sixfoldraycast/sixfoldend 57t append


