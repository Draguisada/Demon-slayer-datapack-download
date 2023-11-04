##Warning of cooldown
execute as @a[tag=cooldown,tag=water] run title @s actionbar ["",{"translate":"misc.cooldown","color":"dark_blue"},{"score":{"name":"@s","objective":"cooldown"},"color":"dark_blue"},{"translate":"misc.cooldown2","color":"dark_blue"}]

execute as @a[tag=cooldown,tag=zenitsu] run title @s actionbar ["",{"translate":"misc.cooldown","color":"yellow"},{"score":{"name":"@s","objective":"cooldown"},"color":"yellow"},{"translate":"misc.cooldown2","color":"yellow"}]

execute as @a[tag=cooldown,tag=sun] run title @s actionbar ["",{"translate":"misc.cooldown","color":"gold"},{"score":{"name":"@s","objective":"cooldown"},"color":"gold"},{"translate":"misc.cooldown2","color":"gold"}]
execute as @a[tag=cooldownrainbow,tag=sun,scores={tanjiroattack=6}] run title @s actionbar ["",{"text":"You are in ","color":"gold"},{"translate":"sun.eleventh.action","color":"dark_aqua"},{"text":" cooldown! ","color":"gold"},{"score":{"name":"@s","objective":"cooldownrainbow"}},{"text":" ticks left!","color":"gold"}]

execute as @a[tag=cooldown,tag=beast] run title @s actionbar ["",{"translate":"misc.cooldown","color":"gray"},{"score":{"name":"@s","objective":"cooldown"},"color":"gray"},{"translate":"misc.cooldown2","color":"gray"}]
execute as @a[tag=cooldown,tag=sound] run title @s actionbar ["",{"translate":"misc.cooldown","color":"white"},{"score":{"name":"@s","objective":"cooldown"},"color":"white"},{"translate":"misc.cooldown2","color":"white"}]

execute as @a[tag=cooldown,tag=flame] run title @s actionbar ["",{"translate":"misc.cooldown","color":"red"},{"score":{"name":"@s","objective":"cooldown"},"color":"red"},{"translate":"misc.cooldown2","color":"red"}]
##
tag @a remove kill
tag @a remove killsummer

execute as @a[tag=fourthsound] at @s positioned ~ ~1 ~ run function demon:particles/sound/fourth/animate

##Dragons
##Water Dragon
execute as @a[tag=10form,scores={10form=1..}] at @s run function demon:breathings/water/10form/dragon
tag @e[type=armor_stand,tag=waterdragon,scores={cooldown=300..}] add waterdragonkill
execute as @e[tag=waterdragonkill,type=armor_stand] at @s run function demon:breathings/water/10form/killdragon

##Tiger
execute if entity @e[type=armor_stand,tag=flametiger] as @e[type=armor_stand,tag=flametiger] at @s run function demon:breathings/flame/fifth/tiger/manager

##Tiger rengoku
execute if entity @e[type=armor_stand,tag=rengokud] as @e[type=armor_stand,tag=rengokud] at @s run function demon:breathings/flame/nine/tiger/manager
#

##Function for doing forms
execute as @a[tag=zenitsu,predicate=demon:isnichirin] at @s run function demon:characters/zenitsu/manager
execute as @a[tag=sun,predicate=demon:isnichirin] at @s run function demon:characters/sun/manager
execute as @a[tag=water,predicate=demon:isnichirin] at @s run function demon:characters/giyu/manager
execute as @a[tag=flame,predicate=demon:isnichirin] at @s run function demon:characters/flame/manager
execute as @a[tag=beast,predicate=demon:isnichirin] at @s run function demon:characters/beast/manager
execute as @a[tag=sound,predicate=demon:isnichirin] at @s run function demon:characters/sound/manager
#Remove the kagura dance sword



##Drop to change form
execute as @a[tag=nichirinset,scores={drop=1..}] at @s run function demon:characters/manager/dropitem

#Particles to breathings
##10th form particles
execute as @a[tag=10form] at @s run function demon:breathings/water/10form/particles
##Kagura blue sky particles
execute as @e[tag=particlebluesky,type=armor_stand] at @s positioned ^ ^ ^-6 run function demon:particles/sun/bluesky/animator/manager
##Kagura summer sun burning bones
execute as @e[tag=summerparticles,type=armor_stand] at @s run function demon:breathings/sun/summer/particlesanimate
