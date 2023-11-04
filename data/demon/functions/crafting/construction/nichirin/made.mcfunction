setblock ~ ~ ~ hopper
setblock ~ ~ ~ air
setblock ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{isNichirin:true,CustomModelData:100,nichirin:"none",Damage:0,display:{Name:'{"text":"Nichirin-tou","italic": false}'}}}]}
tellraw @a[tag=debug] "made nichirintou none"
