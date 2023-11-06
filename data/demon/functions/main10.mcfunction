schedule function demon:main10 10t

##Change from Flamy nichirin to the default one
execute as @a[tag=sun,tag=!kagura,predicate=demon:kaguranichirin] run item modify entity @s weapon.mainhand demon:settowater


#Flying glitch
execute as @a[tag=flying] at @s run function demon:bugfixer/flyingintheair/detectgound

