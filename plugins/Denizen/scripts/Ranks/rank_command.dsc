#
#
# Команда проверить ресы
check_requirements:
    type: command
    name: rank
    description: Проверка нужных ресов
    usage: /rank citizen | farmer | eco
    permission: rank.command
    permission message: Изменение ранга отключено
    tab completions:
        1: citizen|farmer|eco
    script:
    # Базовые проверки
    - if <player.gamemode> != SURVIVAL:
        - narrate "Нельзя получать ранги в креативе!"
        - stop
    # Проверка, что был предоставлен аргумент
    - if <context.args.size> == 0:
        - narrate "Необходимо указать ранг для повышения."
        - stop
    - choose <context.args.first>:
        - case citizen:
            - run promote_citizen
        - case farmer:
            - if !<player.in_group[citizen]>:
                - narrate "Нужно получить гражданство сперва"
                - stop
            - run promote_farmer
        - case eco:
            - if !<player.in_group[farmer]>:
                - narrate "Нужно получить фермора чтобы стать экологом"
                - stop
            - run promote_eco