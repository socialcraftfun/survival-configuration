stars_to_diamonds:
    type: assignment
    actions:
        on assignment:
        - trigger name:click state:true
        - trigger name:chat state:true
        - trigger name:proximity state:true radius:5
    interact scripts:
    - stars_to_diamonds_interact
#
stars_to_diamonds_interact:
    type: interact
    steps:
        1:
            click trigger:
                script:
                - chat "<white>Обменять Звезду почёта на алмазы?<n>Курс 1 Звезда = 35 алмазов<n>Для обмена напиши + в чат"
                - zap 2
        2:
            chat trigger:
                1:
                    trigger: /+/
                    script:
                    - define player <player.name>
                    - if <player.playerpoints_points> >= 1:
                        - execute as_server "points take <player.name> 1"
                        - execute as_server "eco give <player.name> 35"
                        - chat "<white>Начислено 35 алмазов"
                    - else:
                        - chat "<red>Нету звезд"
                    - zap *
            proximity trigger:
                exit:
                    script:
                    - chat "<white>Приходи в другой раз"
                    - zap *
# stars_to_diamonds_interact:
#     type: interact
#     steps:
#         1:
#             proximity trigger:
#                 entry:
#                     script:
#                     - chat "Привет, <player.name>!"
#                 exit:
#                     script:
#                     - chat "Приходи в другой раз"
#                     - zap *