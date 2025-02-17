# Таск для сохранения области
event_area_note:
    type: task
    script:
    # - note <player.location.to_cuboid[<player.cursor_on>]> as:newyear_event_area
    - note <location[111,62,-4541,scworld].to_cuboid[255,102,-4455,scworld]> as:newyear_event_area
# Скрипт для получения подарка
newyear_event:
    type: world
    events:
        on player breaks block in:newyear_event_area:
        - if <context.material.name> = player_head || <context.material.name> = player_wall_head:
            - actionbar "<&[emphasis]>Ты нашёл подарок!"
            - playsound <player> sound:ENTITY_EXPERIENCE_ORB_PICKUP pitch:2
            - if <util.random_chance[3]>:
                - determine zombie_horse_spawn_egg
            - else if <util.random_chance[12]>:
                - random:
                    - determine netherite_sword
                    - determine netherite_pickaxe
                    - determine netherite_axe
            - else if <util.random_chance[8]>:
                - determine enchanted_golden_apple
            - else if <util.random_chance[5]>:
                - random:
                    - determine zombie_head
                    - determine creeper_head
                    - determine skeleton_skull
            - else if <util.random_chance[10]>:
                - determine netherite_ingot
            - else:
                - random:
                    - determine diamond_block
                    - determine iron_block
                    - determine gold_block
                    - determine ancient_debris
                    - determine emerald_block
                    - determine wither_skeleton_skull
        - else:
            - determine cancelled
        on player places block in:newyear_event_area:
        - determine cancelled