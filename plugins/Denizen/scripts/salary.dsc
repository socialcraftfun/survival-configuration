#
mod_salary:
    type: world
    events:
        on system time 12:00:
        - if <util.time_now.day_of_week> == 1:
            # Зарплата модераторов
            - foreach <server.players_flagged[rank_system_moderator]> as:__player:
                - money give quantity:40
                - playerpoints give 1
                - narrate "<green>Зарплата выдана, спасибо за твои труды, <player.name>!"
            # Зарплата полицейских
            - foreach <server.players> as:__player:
                - if <player.flag[rank_system_main]> == <&9>Полицейский:
                    - money give quantity:12
                    - narrate "<green>Зарплата выдана, спасибо за твою работу, <player.name>!"
            # Зарплата президента
                - if <player.flag[rank_system_main]> == <&a>Президент:
                    - money give quantity:30
                    - narrate "<green>Зарплата выдана, спасибо за твою работу, <player.name>!"