summon armor_stand ~ ~ ~ {Tags:["flametiger"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"bone_meal",Count:1b,tag:{CustomModelData:103b}}],HandItems:[{},{}],DisabledSlots:3080208}
tp @e[tag=flametiger,type=armor_stand] ~ ~ ~ ~ ~
schedule function demon:breathings/flame/fifth/tiger/killtiger 1s append

tellraw @a[tag=debug] "release inside tiger flame"