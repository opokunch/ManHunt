execute as @a[scores={go_end=1}] at @s run tellraw @a [{"selector":"@s"},{"text":" がエンドポータルを解放した\nエンドポータル位置[x-y-z] : ","bold": true},{"score":{"name":"@s","objective":"PosX"}},{"text":" - "},{"score":{"name":"@s","objective":"PosY"}},{"text":" - "},{"score":{"name":"@s","objective":"PosZ"}},{"text":" | ディメンション : "},{"nbt":"001","storage":"dime"}]
effect give @a[scores={go_end=1}] glowing 15 0 true