#
# Посмотреть сколько ресов
check_police:
    type: task
    script:
    - run show_stats
    # Assign by admin only
    - if <player.has_flag[rank_met_police]>:
        - narrate "<yellow>Обратитесь к админу или прокурору для повышения ранга"

show_stats:
    type: task
    script:
    # Переменные
    - define ticks <player.statistic[PLAY_ONE_MINUTE]>
    - flag player rank_met_police
    - narrate ------------------------------
    - narrate "Статистика игрока <player.name>"
    # Ранг
    # Время игры
    - if <duration[<[ticks]>t].in_hours> >= 20:
        - narrate "<green>Время онлайн: <&r><duration[<[ticks]>t].formatted><green>/<&r>20h"
    - else:
        - narrate "<red>Время онлайн: <&r><duration[<[ticks]>t].formatted><red>/<&r>20h"
        - flag player rank_met_police:!
    # Опыт
    - if <player.xp_level> >= 100:
        - narrate "<green>Опыт: <&r><player.xp_level><green>/<&r>100"
    - else:
        - narrate "<red>Опыт: <&r><player.xp_level><red>/<&r>100"
        - flag player rank_met_police:!
    # Баланс
    - if <player.money> >= 128:
        - narrate "<green>Баланс: <&r><player.money><green>/<&r>128"
    - else:
        - narrate "<red>Баланс: <&r><player.money><red>/<&r>128"
        - flag player rank_met_police:!
    # Звёзды Почёта
    - if <player.playerpoints_points> >= 1:
        - narrate "<green>Звёзды Почёта: <&r><player.playerpoints_points><green>/<&r>1"
    - else:
        - narrate "<red>Звёзды Почёта: <&r><player.playerpoints_points><red>/<&r>1"
        - flag player rank_met_police:!
    # Ачивка Герой деревни
    - if <player.has_advancement[adventure/hero_of_the_village]>:
        - narrate "<green>Ачивка Герой деревни: есть"
    - else:
        - narrate "<red>Ачивка Герой деревни: нет"
        - flag player rank_met_police:!
    # Убитый моб - иссушитель
    - if <player.statistic[kill_entity].qualifier[<entity[wither]>]> >= 1:
        - narrate "<green>Убито иссушителей: <&r><player.statistic[kill_entity].qualifier[<entity[wither]>]><green>/<&r>1"
    - else:
        - narrate "<red>Убито иссушителей: <&r><player.statistic[kill_entity].qualifier[<entity[wither]>]><red>/<&r>1"
        - flag player rank_met_police:!
    # Звезда Незера
    - if <player.inventory.contains_item[nether_star]>:
        - narrate "<green>Звезда Незера: есть"
    - else:
        - narrate "<red>Звезда Незера: нет"
        - flag player rank_met_police:!
     # Скалковый катализатор
    - if <player.inventory.contains_item[sculk_catalyst]>:
        - narrate "<green>Скалковый катализатор: есть"
    - else:
        - narrate "<red>Скалковый катализатор: нет"
        - flag player rank_met_police:!
    # Тотем
    - if <player.inventory.quantity_item[totem_of_undying]> >= 16:
        - narrate "<green>16 тотемов бессмертия: есть"
    - else:
        - narrate "<red>16 тотемов бессмертия: нет"
        - flag player rank_met_police:!
    #
    - narrate ------------------------------