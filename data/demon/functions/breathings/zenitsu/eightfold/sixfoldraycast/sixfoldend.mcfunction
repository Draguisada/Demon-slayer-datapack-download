tag @a[scores={eightfolddid=6..}] add enddedrightfold
tag @a[tag=enddedrightfold] remove eightfolddid
tag @a[tag=enddedrightfold] remove zenitsudoingsixfold
scoreboard players set @a[tag=enddedrightfold] eightfolddid 0
tag @a[tag=enddedrightfold] remove eightfolddid
execute as @a[tag=enddedrightfold] at @s run tp @s ~ ~ ~
execute as @a[tag=enddedrightfold] at @s run function demon:bugfixer/flyingintheair/giveattribute



tag @a[tag=enddedrightfold] remove zenitsudoingsixfold
tag @a[tag=enddedrightfold] remove enddedrightfold