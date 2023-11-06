schedule function demon:main20t 20t



#Giyu nichirin silence mob for the most satisfing effect killing mobs
execute at @a[tag=calm] run data merge entity @e[type=!#demon:nokill,type=!player,distance=0..6,limit=1,nbt=!{Silent:1b}] {Silent:1b}
#Give the click detector for the player
#execute as @a[predicate=!demon:carrotoffhand] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":""}'}}

execute as @a[tag=zenitsu] if predicate demon:isnichirin run item modify entity @s weapon.mainhand demon:resetnamenichirinthunder
execute as @a[tag=water] if predicate demon:isnichirin run item modify entity @s weapon.mainhand demon:resetnamenichirinwater
execute as @a[tag=sun] if predicate demon:isnichirin run item modify entity @s weapon.mainhand demon:resetnamenichirinsun
execute as @a[tag=flame] if predicate demon:isnichirin run item modify entity @s weapon.mainhand demon:resetnamenichirinflame
execute as @a[tag=beast] if predicate demon:isnichirin run item modify entity @s weapon.mainhand demon:resetnamenichirinbeast
execute as @a[tag=beast] if predicate demon:isnichirinoffhand run item modify entity @s weapon.offhand demon:resetnamenichirinbeast
execute as @a[tag=sound] if predicate demon:isnichirin run item modify entity @s weapon.mainhand demon:resetnamenichirinsound
execute as @a[tag=sound] if predicate demon:isnichirinoffhand run item modify entity @s weapon.offhand demon:resetnamenichirinsound
tag @a[tag=!nichirinset,tag=!none] add none

function demon:trigger/enable
function demon:ranks/advancements/setadvancement