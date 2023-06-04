schedule function demon:main5t 5t

execute as @a[scores={detectclick=1..},predicate=demon:nonenichirin,tag=none] at @s run function demon:nichirin/setelementnichirin

execute as @a[tag=soundfifth] at @s run function demon:particles/sound/fifth/manager


##Tag add player
execute as @a[scores={cooldown=1..}] run tag @s add cooldown
execute as @a[scores={cooldownrainbow=1..}] run tag @s add cooldownrainbow
execute as @a[scores={10form=1..},tag=water] run tag @s add 10form
execute as @a[scores={dance=1..},tag=sun] run tag @s add dance
execute as @a[scores={rengoku=1..},tag=flame] run tag @s add rengoku
execute as @a[scores={9form=1..},tag=water] run tag @s add 9form
execute as @a[scores={kagura=1..},tag=sun] run tag @s add kagura
execute as @a[scores={fourthsound=1..},tag=sound] run tag @s add fourthsound
execute as @a[scores={soundfifth=1..},tag=sound] run tag @s add soundfifth
##Change breathing tp nichirin
execute if entity @e[type=item,predicate=demon:isnichirin] as @e[type=item,predicate=demon:isnichirin] at @s run tp @s @a[tag=nichirinset,limit=1,sort=nearest]

##Remove detectclick
execute as @a[scores={detectclick=1..},predicate=!demon:isnichirin] run scoreboard players set @s detectclick 0
execute as @a[tag=cooldown] run scoreboard players set @s detectclick 0

##9 form water
execute at @a[tag=9form] as @e[tag=blocks,type=marker,distance=2..] run function demon:breathings/water/ninth/blockdelete
execute as @a[tag=9form] at @s run fill ~ ~-1 ~ ~ ~-1 ~ barrier replace air
execute as @a[tag=9form] at @s unless entity @e[type=marker,distance=..1.5] run summon marker ~ ~-1 ~ {Tags:["blocks"]}
execute as @a[tag=9form] at @s run function demon:breathings/water/ninth/step


##Death
tag @a[tag=kill,scores={death=1..}] remove kill
tag @a[tag=godspeed,scores={death=1..}] remove godspeed
tag @a[tag=killwaterfirst,scores={death=1..}] remove killwaterfirst
tag @a[tag=blueskydmg,scores={death=1..}] remove blueskydmg
execute as @a[scores={death=1..},tag=!kill] run scoreboard players set @s death 0

##11th form particles
execute as @a[tag=water,tag=calm] at @s run function demon:breathings/water/giyu/animations/deathcalm/deathcalmparticles

