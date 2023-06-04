tag @a[scores={sixfolddid=6..}] add enddedsixfold
tag @a[tag=enddedsixfold] remove sixfolddid
tag @a[tag=enddedsixfold] remove zenitsudoingsixfold
tag @a[tag=enddedsixfold] remove zform
scoreboard players set @a[tag=enddedsixfold] sixfolddid 0
execute as @a[tag=enddedsixfold] at @s run tp @s ~ ~ ~
execute as @a[tag=enddedsixfold] at @s run function demon:bugfixer/flyingintheair/giveattribute


tag @a[tag=enddedsixfold] remove enddedsixfold
