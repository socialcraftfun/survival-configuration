connect_to_discord:
    type: world
    events:
        after server start:
        - ~discordconnect id:sc_chat token:<secret[sc_chat_bot_token]>

# online Показать список игроков онлайн
create_online_cmd:
    type: task
    script:
    - ~discordcommand create group:<discord[sc_chat].group[SocialCraft]> name:online "description:Список игроков онлайн" save:online
    - debug log <entry[online].command.name>
#
online_cmd:
    type: world
    events:
        on discord slash command name:online:
        - ~discordinteraction defer interaction:<context.interaction>
        - if <context.channel.id> != 972481410189361192:
            - define message "Эта команда доступна только в канале <#972481410189361192>"
            - ~discordinteraction reply interaction:<context.interaction> <[message]>
            - stop
        - if <server.online_players> == null:
            - define none_message "*Пока тут никого нет*"
            - ~discordinteraction reply interaction:<context.interaction> <[none_message]>
            - stop
        - define message "*Игроки онлайн:*<n>**<server.online_players.formatted>**"
        - ~discordinteraction reply interaction:<context.interaction> <[message]>
#
# Команда продления ранга Youtube для дискорда
create_yt_renew_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:yt-renew "description:Команда админа" options:<[options]>
#
yt_renew_cmd:
    type: world
    events:
        on discord slash command name:yt-renew:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|992836962786488341]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - execute as_server "lp user <[player].name> parent removetemp youtube"
        - execute as_server "lp user <[player].name> parent addtemp youtube 2w"
        - ~discordinteraction reply interaction:<context.interaction> "*YouTube был продлён у **<[player].name>** на 2 недели*"
#
# Команды награждения победителя на ивенте
# 1 место
create_winner_first_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:winner-first "description:Команда админа" options:<[options]>
#
winner_first_cmd:
    type: world
    events:
        on discord slash command name:winner-first:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|992836962786488341]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - execute as_server "lp user <[player].name> parent addtemp vip 1w"
        - execute as_server "points give <[player].name> 1"
        - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** получает награду за победу на ивенте:<n>**VIP на 1 неделю и Звезду Почёта!***"
#
# 2 место
create_winner_second_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:winner-second "description:Команда админа" options:<[options]>
#
winner_second_cmd:
    type: world
    events:
        on discord slash command name:winner-second:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|992836962786488341]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - execute as_server "points give <[player].name> 1"
        - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** получает награду за 2 место на ивенте:<n>**Звезду Почёта!***"
#
# 3 место
create_winner_third_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:winner-third "description:Команда админа" options:<[options]>
#
winner_third_cmd:
    type: world
    events:
        on discord slash command name:winner-third:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|992836962786488341]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - execute as_server "eco give <[player].name> 25"
        - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** получает награду за 3 место на ивенте:<n>**25 алмазов!***"
#
# Победа в команде
create_winner_team_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: team
            description: Название команды
            required: true
        2:
            type: string
            name: player1
            description: Имя игрока
            required: true
        3:
            type: string
            name: player2
            description: Имя игрока
            required: true
        4:
            type: string
            name: player3
            description: Имя игрока
            required: false
        5:
            type: string
            name: player4
            description: Имя игрока
            required: false
        6:
            type: string
            name: player5
            description: Имя игрока
            required: false
        7:
            type: string
            name: player6
            description: Имя игрока
            required: false
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:winner-team "description:Команда админа" options:<[options]>
#
winner_team_cmd:
    type: world
    events:
        on discord slash command name:winner-team:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|992836962786488341]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define team <context.options.get[team]>
        - define player1 <server.match_offline_player[<context.options.get[player1].if_null[<empty>]>].if_null[null]>
        - if <[player1]> == null:
            - define player1raw <context.options.get[player1]>
            - ~discordinteraction reply interaction:<context.interaction> "*Игрока <[player1raw]> нет на сервере*"
            - stop
        - execute as_server "lp user <[player1].name> parent addtemp vip 1w"
        - execute as_server "points give <[player1].name> 1"
        - define player2 <server.match_offline_player[<context.options.get[player2].if_null[<empty>]>].if_null[null]>
        - if <[player2]> == null:
            - define player2raw <context.options.get[player2]>
            - ~discordinteraction reply interaction:<context.interaction> "*Игрока <[player2raw]> нет на сервере*"
            - stop
        - execute as_server "lp user <[player2].name> parent addtemp vip 1w"
        - execute as_server "points give <[player2].name> 1"
        - define player3 <server.match_offline_player[<context.options.get[player3].if_null[<empty>]>].if_null[null]>
        - if <[player3]> == null:
            - define player3raw <context.options.get[player3]>
            - ~discordinteraction reply interaction:<context.interaction> "*Игрока <[player3raw]> нет на сервере*"
            - stop
        - execute as_server "lp user <[player3].name> parent addtemp vip 1w"
        - execute as_server "points give <[player3].name> 1"
        - define player4 <server.match_offline_player[<context.options.get[player4].if_null[<empty>]>].if_null[null]>
        - if <[player4]> == null:
            - define player4raw <context.options.get[player4]>
            - ~discordinteraction reply interaction:<context.interaction> "*Игрока <[player4raw]> нет на сервере*"
            - stop
        - execute as_server "lp user <[player4].name> parent addtemp vip 1w"
        - execute as_server "points give <[player4].name> 1"
        - define player5 <server.match_offline_player[<context.options.get[player5].if_null[<empty>]>].if_null[null]>
        - if <[player5]> == null:
            - define player5raw <context.options.get[player5]>
            - ~discordinteraction reply interaction:<context.interaction> "*Игрока <[player5raw]> нет на сервере*"
            - stop
        - execute as_server "lp user <[player5].name> parent addtemp vip 1w"
        - execute as_server "points give <[player5].name> 1"
        - define player6 <server.match_offline_player[<context.options.get[player6].if_null[<empty>]>].if_null[null]>
        - if <[player6]> == null:
            - define player6raw <context.options.get[player6]>
            - ~discordinteraction reply interaction:<context.interaction> "*Игрока <[player6raw]> нет на сервере*"
            - stop
        - execute as_server "lp user <[player6].name> parent addtemp vip 1w"
        - execute as_server "points give <[player6].name> 1"
        - ~discordinteraction reply interaction:<context.interaction> "*Игроки команды **<[team]> <[player1].name> <[player2].name> <[player3].name> <[player4].name> <[player5].name> <[player6].name>**<n>получают награду за победу на ивенте:<n>**VIP на 1 неделю и Звезду Почёта!***"
#
# Награда организатору
create_event_manager_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:event-manager "description:Команда админа" options:<[options]>
#
event_manager_cmd:
    type: world
    events:
        on discord slash command name:event-manager:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|992836962786488341]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - execute as_server "points give <[player].name> 1"
        - execute as_server "eco give <[player].name> 32"
        - ~discordinteraction reply interaction:<context.interaction> "*Благодарность **<[player].name>** за проведение ивента выдана*"
#
# Команда для бана в игре
create_ban_mc_cmd:
    type: task
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
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:ban-mc "description:Команда модератора" options:<[options]>
#
ban_mc_cmd:
    type: world
    events:
        on discord slash command name:ban-mc:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|885571413224878133]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - define reason <context.options.get[reason]>
        - execute as_server "ban <[player].name> <[reason]>"
        - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** был забанен в игре<n>По причине: **<[reason]>***"
#
# Команда для кика в игре
create_kick_mc_cmd:
    type: task
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
            required: false
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:kick-mc "description:Команда модератора" options:<[options]>
#
kick_mc_cmd:
    type: world
    events:
        on discord slash command name:kick-mc:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|885571413224878133]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - define reason <context.options.get[reason].if_null[<empty>]>
        - execute as_server "kick <[player].name> <[reason]>"
        - define reason_re <context.options.get[reason].if_null[не указана]>
        - ~discordinteraction reply interaction:<context.interaction> "*Игрока **<[player].name>** выгнали из игры<n>По причине: **<[reason_re]>***"
#
# Команда для мута в игре
create_mute_mc_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
        2:
            type: string
            name: time
            description: Срок
            required: false
        3:
            type: string
            name: reason
            description: Причина
            required: false
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:mute-mc "description:Команда полицейского" options:<[options]>
#
mute_mc_cmd:
    type: world
    events:
        on discord slash command name:mute-mc:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|885571413224878133|748950689513996313]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - define time <context.options.get[time].if_null[<empty>]>
        - define reason <context.options.get[reason].if_null[<empty>]>
        - execute as_server "mute <[player].name> <[time]> <[reason]>"
            # - if <server.flag[muted].contains[<[player]>]>:
            #     - flag server muted:<-:<[player]>
            #     - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player]>** был размьючен в игре*"
            #     - stop
            # - flag server muted:->:<[player]>
        - define time_re <context.options.get[time].if_null[бессрочно]>
        - define reason_re <context.options.get[reason].if_null[не указана]>
        - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** замьючен в игре<n>На срок: **<[time_re]>**<n>По причине: **<[reason_re]>***"
#
# Команда для тюрьмы в игре
create_jail_mc_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
        2:
            type: string
            name: cell
            description: Камера 1-5
            required: true
        3:
            type: string
            name: time
            description: Срок
            required: false
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:jail-mc "description:Команда полицейского" options:<[options]>
#
jail_mc_cmd:
    type: world
    events:
        on discord slash command name:jail-mc:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|885571413224878133|748950689513996313]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - define cell <context.options.get[cell]>
        - define time <context.options.get[time].if_null[<empty>]>
        - execute as_server "jail <[player].name> <[cell]> <[time]>"
        - define time_re <context.options.get[time].if_null[бессрочно]>
        - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** посажен в тюрьму<n>На срок: **<[time_re]>***"
#
#
create_unjail_mc_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:unjail-mc "description:Команда полицейского" options:<[options]>
#
unjail_mc_cmd:
    type: world
    events:
        on discord slash command name:unjail-mc:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|885571413224878133|748950689513996313]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - execute as_server "unjail <[player].name>"
        - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** выпущен на свободу*"
#
# message ЛС в игру онлайн игроку
create_message_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
        2:
            type: string
            name: text
            description: Текст сообщения
            required: true
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:message "description:ЛС игроку в майне" options:<[options]>
#
message_cmd:
    type: world
    events:
        on discord slash command name:message:
        - ~discordinteraction defer interaction:<context.interaction> ephemeral:true
        - if <context.channel.id> != 972481410189361192:
            - define botmessage "Эта команда доступна только в канале <#972481410189361192>"
            - ~discordinteraction reply interaction:<context.interaction> <[botmessage]>
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - define user <context.interaction.user>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - if !<[player].is_online>:
            - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** оффлайн. Невозможно отправить сообщение*"
            - stop
        - define text <context.options.get[text]>
        - define message "<&8>[<blue><[user].name> <&8>-<&gt> <blue>я<&8>] <&r><[text]>"
        - narrate <[message]> targets:<[player]>
        - flag <[player]> discord_privatemessage_user:<[user]> expire:10m
        - ~discordinteraction reply interaction:<context.interaction> "*Сообщение **<[player].name>** отправлено*"
        - ~discordmessage id:sc_chat user:<[user]> "**Вы -<&gt> <[player].name>**: <[text]>"
#
test_flags:
    type: task
    script:
    - narrate <player.flag[ds_pm]>
    # - flag player <player.name>
    # - define user <discord_user.user_>
    # - ~discordmessage id:sc_chat user:<[user]> "*Сообщение игроку **<[player].name>**:<n>"**<[text]>**"*"
#
# replydiscord ответ на message ЛС в игру онлайн игроку
replydiscord_cmd:
    type: command
    name: replydiscord
    description: Ответить на лс из дискорда
    usage: /replydiscord
    aliases:
    - replyds
    - rdiscord
    - rds
    script:
    - if !<player.has_flag[discord_privatemessage_user]>:
        - narrate "Время для ответа истекло"
        - stop
    - define user <player.flag[discord_privatemessage_user]>
    - define message "<&8>[<blue>я <&8>-<&gt> <blue><[user].name><&8>] <&r><context.raw_args>"
    - narrate <[message]>
    - ~discordmessage id:sc_chat user:<[user]> "**<player.name>:** <context.raw_args>"
#
# Команда для новости об ивенте
create_next_event_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: name
            description: Название ивента
            required: true
        2:
            type: string
            name: time
            description: Время
            required: true
        3:
            type: string
            name: date
            description: Дата
            required: true
        4:
            type: string
            name: week_day
            description: День недели
            required: true
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:next_event "description:Команда организатора" options:<[options]>
#
next_event_cmd:
    type: world
    events:
        on discord slash command name:next_event:
        - ~discordinteraction defer interaction:<context.interaction>
        - if <context.channel.id> != 972481410189361192:
            - define message "Эта команда доступна только в канале <#972481410189361192>"
            - ~discordinteraction reply interaction:<context.interaction> <[message]>
            - stop
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|873516651570667552]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - flag server new_event_name:<context.options.get[name]>
        - flag server new_event_time:<context.options.get[time]>
        - flag server new_event_date:<context.options.get[date]>
        - flag server new_event_week_day:<context.options.get[week_day]>
        - announce "<&d>ПРИХОДИ НА ИВЕНТ! <server.flag[new_event_name]> состоится в <server.flag[new_event_time]> <server.flag[new_event_week_day]>, <server.flag[new_event_date]>"
        - playsound <server.online_players> sound:ITEM_GOAT_HORN_SOUND_1
        - ~discordinteraction reply interaction:<context.interaction> "*Объявление об ивенте <server.flag[new_event_name]> в <server.flag[new_event_time]> <server.flag[new_event_week_day]>, <server.flag[new_event_date]> сделано*"
#
# Команда seen
create_seen_mc_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:seen_mc "description:Команда полицейского" options:<[options]>
#
seen_mc_cmd:
    type: world
    events:
        on discord slash command name:seen_mc:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|885571413224878133|748950689513996313]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - if <[player].is_online>:
            - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** сейчас онлайн*"
            - stop
        - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** был онлайн <[player].last_played_time.format_discord><n><util.time_now.duration_since[<[player].last_played_time>].formatted> назад*"
#
# Команда для оповещения о заходе игрока на сервер
create_player_online_notif_cmd:
    type: task
    script:
    - definemap options:
        1:
            type: string
            name: player
            description: Имя игрока
            required: true
    - ~discordcommand id:sc_chat create group:<discord[sc_chat].group[SocialCraft]> name:player-online-notif "description:Команда модератора" options:<[options]>
#
player_online_notif_cmd:
    type: world
    events:
        on discord slash command name:player-online-notif:
        - ~discordinteraction defer interaction:<context.interaction>
        - if !<context.interaction.user.roles[<context.group>].parse[id].contains_any[971819146784419860|885571413224878133]>:
            - ~discordinteraction reply interaction:<context.interaction> "*У вас нет прав на использование этой команды*"
            - stop
        - define player <server.match_offline_player[<context.options.get[player].if_null[<empty>]>].if_null[null]>
        - if <[player]> == null:
            - ~discordinteraction reply interaction:<context.interaction> "*Такого игрока нет на сервере*"
            - stop
        - if <[player].is_online>:
            - ~discordinteraction reply interaction:<context.interaction> "*Игрок **<[player].name>** сейчас онлайн*"
            - stop
        - define user <context.interaction.user>
        - flag <[player]> discord_playeronlinenotif_user:<[user]>
        - ~discordinteraction reply interaction:<context.interaction> "*Вы получите оповещение, когда игрок **<[player].name>** будет онлайн*"
#
player_online_notif_cmd_world:
    type: world
    events:
        on player joins:
        - if <player.has_flag[discord_playeronlinenotif_user]>:
            - define user <player.flag[discord_playeronlinenotif_user]>
            - define message "***<player.name>** присоединился к игре*"
            - ~discordmessage id:sc_chat user:<[user]> <[message]>
            - flag <player> discord_playeronlinenotif_user:!