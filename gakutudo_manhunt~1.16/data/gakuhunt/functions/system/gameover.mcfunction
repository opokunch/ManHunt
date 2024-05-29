execute at @a run playsound entity.ender_dragon.ambient player @s ~ ~ ~
title @a subtitle {"text":"ランナー全員が殺害されてしまった！","color":"red"}
title @a title {"text":"GAME OVER","color":"red"}
gamemode spectator @a
team leave @a
scoreboard players set #system_count count -1