#
# Стоп для тех, кто прошел SocialQuizzes Rules
startquiz_stop_flag:
    type: world
    events:
        on startquiz command:
        - if <player.has_flag[socialquizzes_rules]>:
            - narrate "Вы уже проходили этот тест"
            - determine cancelled
            - stop
#
#
#
# Команда для выдачи преда
warn_cmd:
    type: command
    debug: true
    name: warn
    description: Выдача предупреждения за нарушение
    usage: /warn [player]
    permission: moderator.warn
    permission message: У вас нет разрешения использовать эту команду
    tab completions:
        1: <server.online_players.parse[name]>
    script:
    - define player <server.match_offline_player[<context.args.get[1].if_null[<empty>]>].if_null[null]>
    - if <[player]> == null:
        - narrate "<&9>Такого игрока нет на сервере"
        - stop
    - define reason <context.args.get[2].if_null[причина не указана]>
    - flag <[player]> warn:++
    - if !<player[<[player]>].is_online>:
        - flag <[player]> warned_moderator:<player>
        - flag <[player]> warned_reason:<[reason]>
        - narrate "<&9>Игрок <&f><[player].name> <&9>оффлайн. Он получит наказание, когда зайдет на сервер, причина наказания: <[reason]>. Если вы будете онлайн, вас оповестят."
        - stop
    - if <player[<[player]>].flag[warn]> == 3:
        - execute as_server "mute <[player].name> 2h"
        - flag <[player]> warn:!
        - narrate targets:<[player]> "<&c>Вы получили 3 предупреждение, причина: <[reason]>. Выдан мут на 2 часа"
        - narrate "<&9>Игрок <&f><[player].name> <&9>получил 3 предупреждение. Выдан мут на 2 часа, причина: <[reason]>"
        - stop
    - narrate targets:<[player]> "<&c>Вы получили <[player].flag[warn]> предупреждение, причина: <[reason]>"
    - narrate targets:<[player]> "<&c>После 3 предупреждения будет мут"
    - narrate "<&9>Выдано предупреждение игроку <&f><[player].name>, <&9>причина: <[reason]>"
#
warn_cmd_world:
    type: world
    debug: true
    events:
        on player joins:
        - if <player.has_flag[warned_moderator]>:
            - define moderator <server.match_offline_player[<player.flag[warned_moderator]>].if_null[null]>
            # - define raw_moderator <player.flag[warned_moderator]>
            - define reason <player.flag[warned_reason]>
            - define channel <player.flag[warned_channel]>
            - flag player warned_moderator:!
            - flag player warned_reason:!
            - flag player warned_channel:!
            - if <player.flag[warn]> == 3:
                - wait 2s
                - execute as_server "mute <player.name> 2h"
                - narrate "<&c>Вы получили 3 предупреждение, причина: <[reason]>. Выдан мут на 2 часа"
                - flag <player> warn:!
                - if <[moderator]> == null:
                    - ~discordmessage id:sc_chat channel:<[channel]> "*Игрок **<player.name>** получил отложенное наказание: 3 предупреждение. Игроку выдан мут на 2 часа, причина: <[reason]>*"
                    - stop
                - if <[moderator].is_online>:
                    - narrate targets:<[moderator]> "<&9>Игрок <&f><player.name> <&9>получил отложенное наказание: 3 предупреждение. Игроку выдан мут на 2 часа, причина: <[reason]>"
                - stop
            - wait 2s
            - narrate "<&c>Вы получили <player.flag[warn]> предупреждение, причина: <[reason]>"
            - narrate "<&c>После 3 предупреждения будет мут"
            - if <[moderator]> == null:
                - ~discordmessage id:sc_chat channel:<[channel]> "*Игрок **<player.name>** получил отложенное предупреждение, причина: <[reason]>*"
                - stop
            - if <[moderator].is_online>:
                - narrate targets:<[moderator]> "<&9>Игрок <&f><player.name> <&9>получил отложенное предупреждение, <&9>причина: <[reason]>"
#
create_warn_mc_ds_cmd:
    type: task
    debug: true
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
        2:
            type: string
            name: reason
            description: Причина
            required: true
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:warn-mc "description:Команда полицейского" options:<[options]>
#
warn_mc_cmd:
    type: world
    debug: true
    events:
        on discord slash command name:warn-mc:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|885571413224878133|748950689513996313]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - define reason <context.options.get[reason]>
        - flag <[player]> warn:++
        - if !<[player].is_online>:
            - narrate "<&9>Игрок не онлайн"
            - flag <[player]> warned_moderator:<context.interaction.user>
            - flag <[player]> warned_reason:<[reason]>
            - flag <[player]> warned_channel:<context.channel>
            - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** оффлайн. Он получит наказание, когда зайдет на сервер, причина наказания: <[reason]>. Вам придёт оповещение.*"
            - stop
        - if <[player].flag[warn]> == 3:
            - execute as_server "mute <[player].name> 2h"
            - flag <[player]> warn:!
            - narrate targets:<[player]> "<&c>Вы получили 3 предупреждение, причина: <[reason]>. Выдан мут на 2 часа"
            - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** получил 3 предупреждение. Выдан мут на 2 часа, причина: <[reason]>*"
            - stop
        - narrate targets:<[player]> "<&c>Вы получили <[player].flag[warn]> предупреждение, причина: <[reason]>"
        - narrate targets:<[player]> "<&c>После 3 предупреждения будет мут"
        - ~discordinteraction reply interaction:<context.interaction> "*Выдано предупреждение игроку **<[player].name>**, причина: <[reason]>*"
#
# Скрипт для урона от снежков
#
snowball_damage:
    type: world
    events:
        on snowball hits player:
        - hurt 2
#