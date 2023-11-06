tag @s add eightfolddid
scoreboard players set @s ds_cooldown 400
tag @s add zenitsudoingsixfold
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"zenitsu.eightfold.chat","bold": true,"color":"yellow"}]
#
summon marker ~ ~ ~ {Tags:["zenitsusixfoldstart"]}
scoreboard players set @s ds_detectclick 0
schedule function demon:breathings/zenitsu/eightfold/supanimationsend 1t append
execute at @e[tag=zenitsusixfoldstart,type=marker] run summon lightning_bolt ~ 0 ~
kill @e[tag=zenitsusixfoldstart,type=marker]

schedule function demon:breathings/zenitsu/eightfold/supanimationsend 16t append
schedule function demon:breathings/zenitsu/eightfold/supanimationsend 26t append
schedule function demon:breathings/zenitsu/eightfold/supanimationsend 36t append
schedule function demon:breathings/zenitsu/eightfold/supanimationsend 46t append
schedule function demon:breathings/zenitsu/eightfold/supanimationsend 56t append
schedule function demon:breathings/zenitsu/eightfold/supanimationsend 66t append
schedule function demon:breathings/zenitsu/eightfold/supanimationsend 76t append
schedule function demon:breathings/zenitsu/eightfold/sixfoldraycast/sixfoldend 77t append
tag @s remove eightfolddid

