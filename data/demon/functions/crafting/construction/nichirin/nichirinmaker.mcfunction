summon marker ~ ~ ~ {Tags:["maker"]}

setblock ~ ~ ~ hopper
setblock ~ ~1 ~ daylight_detector
tellraw @a[tag=debug] "nichirinmaker killed armor_stand"
kill @s