#
# Меню для покупки флагов для привата
rg_flags_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купи флаги для привата!
    size: 36
    gui: true
    slots:
    - [] [tnt_flag] [] [chest_access_flag] [] [potion_splash_flag] [] [mob_damage_flag] []
    - [] [enderman_grief_flag] [] [ravager_grief_flag] [] [mob_spawning_flag] [] [fire_spread_flag] []
    - [] [snow_melt_flag] [] [ice_melt_flag] [] [vine_growth_flag] [] [enderpearl_flag] []
    - [] [chorus_fruit_flag] [] [greeting_flag] [] [farewell_flag] [] [item_rotation_flag] []
#
# Команда для меню выбора флага
rg_flags_cmd:
    type: command
    name: stars_flags
    description: Меню магазина флагов
    usage: /stars_flags
    permission: stars.flags
    permission message: Флаги отключены на данный момент
    script:
    - inventory open d:RG_FLAGS_INV
#
tnt_flag:
    type: item
    material: orange_banner
    display name: <&5>TNT
    lore:
    - <&7>Защита от взрывов ТНТ
    - <&2>Цена 2 звезды
#
chest_access_flag:
    type: item
    material: brown_banner
    display name: <&5>CHEST-ACCESS
    lore:
    - <&7>Разрешить заглядывать в сундуки
    - <&2>Цена 2 звезды
#
potion_splash_flag:
    type: item
    material: pink_banner
    display name: <&5>POTION-SPLASH
    lore:
    - <&7>Запрет на использование зелий
    - <&2>Цена 2 звезды
#
mob_damage_flag:
    type: item
    material: black_banner
    display name: <&5>MOB-DAMAGE
    lore:
    - <&7>Мобы не наносят урона
    - <&2>Цена 2 звезды
#
enderman_grief_flag:
    type: item
    material: purple_banner
    display name: <&5>ENDERMAN-GRIEF
    lore:
    - <&7>Эндермены не гриферят терру
    - <&2>Цена 2 звезды
#
ravager_grief_flag:
    type: item
    material: gray_banner
    display name: <&5>RAVAGER-GRIEF
    lore:
    - <&7>Разорители не гриферят терру
    - <&2>Цена 2 звезды
#
mob_spawning_flag:
    type: item
    material: light_gray_banner
    display name: <&5>MOB-SPAWNING
    lore:
    - <&7>Мобы не спавнятся
    - <&2>Цена 2 звезды
#
fire_spread_flag:
    type: item
    material: red_banner
    display name: <&5>FIRE-SPREAD
    lore:
    - <&7>Огонь не распространяется
    - <&2>Цена 2 звезды
#
snow_melt_flag:
    type: item
    material: white_banner
    display name: <&5>SNOW-MELT
    lore:
    - <&7>Включить/выключить таяние снега
    - <&2>Цена 2 звезды
#
ice_melt_flag:
    type: item
    material: light_blue_banner
    display name: <&5>ICE-MELT
    lore:
    - <&7>Включить/выключить таяние льда
    - <&2>Цена 2 звезды
#
vine_growth_flag:
    type: item
    material: lime_banner
    display name: <&5>VINE-GROWTH
    lore:
    - <&7>Лианы не растут
    - <&2>Цена 2 звезды
#
enderpearl_flag:
    type: item
    material: green_banner
    display name: <&5>ENDERPEARL
    lore:
    - <&7>Запрет на тп с эндерперлом
    - <&2>Цена 2 звезды
#
chorus_fruit_flag:
    type: item
    material: magenta_banner
    display name: <&5>CHORUS-FRUIT-TELEPORT
    lore:
    - <&7>Запрет на тп с хорусом
    - <&2>Цена 2 звезды
#
greeting_flag:
    type: item
    material: yellow_banner
    display name: <&5>GREETING
    lore:
    - <&7>Приветствие для посетителей региона
    - <&2>Цена 2 звезды
#
farewell_flag:
    type: item
    material: cyan_banner
    display name: <&5>FAREWELL
    lore:
    - <&7>Прощание с посетителями региона
    - <&2>Цена 2 звезды
#
item_rotation_flag:
    type: item
    material: blue_banner
    display name: <&5>ITEM-FRAME-ROTATION
    lore:
    - <&7>Нельзя вращать предметы в рамках
    - <&2>Цена 2 звезды
#
rg_flags_inv_world:
    type: world
    events:
        after player clicks tnt_flag in rg_flags_inv:
        - inventory open d:tnt_flag_inv
        after player clicks chest_access_flag in rg_flags_inv:
        - inventory open d:chest_access_flag_inv
        after player clicks potion_splash_flag in rg_flags_inv:
        - inventory open d:potion_splash_flag_inv
        after player clicks mob_damage_flag in rg_flags_inv:
        - inventory open d:mob_damage_flag_inv
        after player clicks enderman_grief_flag in rg_flags_inv:
        - inventory open d:enderman_grief_flag_inv
        after player clicks ravager_grief_flag in rg_flags_inv:
        - inventory open d:ravager_grief_flag_inv
        after player clicks mob_spawning_flag in rg_flags_inv:
        - inventory open d:mob_spawning_flag_inv
        after player clicks fire_spread_flag in rg_flags_inv:
        - inventory open d:fire_spread_flag_inv
        after player clicks snow_melt_flag in rg_flags_inv:
        - inventory open d:snow_melt_flag_inv
        after player clicks ice_melt_flag in rg_flags_inv:
        - inventory open d:ice_melt_flag_inv
        after player clicks vine_growth_flag in rg_flags_inv:
        - inventory open d:vine_growth_flag_inv
        after player clicks enderpearl_flag in rg_flags_inv:
        - inventory open d:enderpearl_flag_inv
        after player clicks chorus_fruit_flag in rg_flags_inv:
        - inventory open d:chorus_fruit_flag_inv
        after player clicks greeting_flag in rg_flags_inv:
        - inventory open d:greeting_flag_inv
        after player clicks farewell_flag in rg_flags_inv:
        - inventory open d:farewell_flag_inv
        after player clicks item_rotation_flag in rg_flags_inv:
        - inventory open d:item_rotation_flag_inv
#
tnt_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить TNT?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
tnt_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in tnt_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.tnt.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.tnt.* true"
        - flag player region_flags_owned:->:tnt
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>tnt"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват tnt allow/deny"
        - narrate <&5>------------------------------
        after player clicks no_item in tnt_flag_inv:
        - inventory close
        after player clicks back_item in tnt_flag_inv:
        - inventory open d:rg_flags_inv
#
chest_access_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить CHEST-ACCESS?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
chest_access_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in chest_access_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.chest-access.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.chest-access.* true"
        - flag player region_flags_owned:->:chest-access
        - inventory close
        - narrate <&5>-----------------------------------
        - narrate "Ты купил <&5>chest-access"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват chest-access allow/deny"
        - narrate <&5>-----------------------------------
        after player clicks no_item in chest_access_flag_inv:
        - inventory close
        after player clicks back_item in chest_access_flag_inv:
        - inventory open d:rg_flags_inv
#
potion_splash_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить POTION-SPLASH?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
potion_splash_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in potion_splash_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.potion-splash.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.potion-splash.* true"
        - flag player region_flags_owned:->:potion-splash
        - inventory close
        - narrate <&5>------------------------------------
        - narrate "Ты купил <&5>potion-splash"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват potion-splash allow/deny"
        - narrate <&5>------------------------------------
        after player clicks no_item in potion_splash_flag_inv:
        - inventory close
        after player clicks back_item in potion_splash_flag_inv:
        - inventory open d:rg_flags_inv
#
mob_damage_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить MOB-DAMAGE?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
mob_damage_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in mob_damage_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.mob-damage.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.mob-damage.* true"
        - flag player region_flags_owned:->:mob-damage
        - inventory close
        - narrate <&5>---------------------------------
        - narrate "Ты купил <&5>mob-damage"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват mob-damage allow/deny"
        - narrate <&5>---------------------------------
        after player clicks no_item in mob_damage_flag_inv:
        - inventory close
        after player clicks back_item in mob_damage_flag_inv:
        - inventory open d:rg_flags_inv
#
enderman_grief_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить ENDERMAN-GRIEF?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
enderman_grief_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in enderman_grief_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.enderman-grief.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.enderman-grief.* true"
        - flag player region_flags_owned:->:enderman-grief
        - inventory close
        - narrate <&5>-------------------------------------
        - narrate "Ты купил <&5>enderman-grief"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват enderman-grief allow/deny"
        - narrate <&5>-------------------------------------
        after player clicks no_item in enderman_grief_flag_inv:
        - inventory close
        after player clicks back_item in enderman_grief_flag_inv:
        - inventory open d:rg_flags_inv
#
ravager_grief_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить RAVAGER-GRIEF?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
ravager_grief_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in ravager_grief_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.ravager-grief.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.ravager-grief.* true"
        - flag player region_flags_owned:->:ravager-grief
        - inventory close
        - narrate <&5>------------------------------------
        - narrate "Ты купил <&5>ravager-grief"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват ravager-grief allow/deny"
        - narrate <&5>------------------------------------
        after player clicks no_item in ravager_grief_flag_inv:
        - inventory close
        after player clicks back_item in ravager_grief_flag_inv:
        - inventory open d:rg_flags_inv
#
mob_spawning_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить MOB-SPAWNING?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
mob_spawning_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in mob_spawning_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.mob-spawning.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.mob-spawning.* true"
        - flag player region_flags_owned:->:mob-spawning
        - inventory close
        - narrate <&5>-----------------------------------
        - narrate "Ты купил <&5>mob-spawning"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват mob-spawning allow/deny"
        - narrate <&5>-----------------------------------
        after player clicks no_item in mob_spawning_flag_inv:
        - inventory close
        after player clicks back_item in mob_spawning_flag_inv:
        - inventory open d:rg_flags_inv
#
fire_spread_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить FIRE-SPREAD?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
fire_spread_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in fire_spread_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.fire-spread.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.fire-spread.* true"
        - flag player region_flags_owned:->:fire-spread
        - inventory close
        - narrate <&5>----------------------------------
        - narrate "Ты купил <&5>fire-spread"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват fire-spread allow/deny"
        - narrate <&5>----------------------------------
        after player clicks no_item in fire_spread_flag_inv:
        - inventory close
        after player clicks back_item in fire_spread_flag_inv:
        - inventory open d:rg_flags_inv
#
snow_melt_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить SNOW-MELT?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
snow_melt_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in snow_melt_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.snow-melt.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.snow-melt.* true"
        - flag player region_flags_owned:->:snow-melt
        - inventory close
        - narrate <&5>--------------------------------
        - narrate "Ты купил <&5>snow-melt"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват snow-melt allow/deny"
        - narrate <&5>--------------------------------
        after player clicks no_item in snow_melt_flag_inv:
        - inventory close
        after player clicks back_item in snow_melt_flag_inv:
        - inventory open d:rg_flags_inv
#
ice_melt_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить ICE-MELT?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
ice_melt_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in ice_melt_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.ice-melt.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.ice-melt.* true"
        - flag player region_flags_owned:->:ice-melt
        - inventory close
        - narrate <&5>-------------------------------
        - narrate "Ты купил <&5>ice-melt"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват ice-melt allow/deny"
        - narrate <&5>-------------------------------
        after player clicks no_item in ice_melt_flag_inv:
        - inventory close
        after player clicks back_item in ice_melt_flag_inv:
        - inventory open d:rg_flags_inv
#
vine_growth_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить VINE-GROWTH?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
vine_growth_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in vine_growth_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.vine-growth.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.vine-growth.* true"
        - flag player region_flags_owned:->:vine-growth
        - inventory close
        - narrate <&5>----------------------------------
        - narrate "Ты купил <&5>vine-growth"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват vine-growth allow/deny"
        - narrate <&5>----------------------------------
        after player clicks no_item in vine_growth_flag_inv:
        - inventory close
        after player clicks back_item in vine_growth_flag_inv:
        - inventory open d:rg_flags_inv
#
enderpearl_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить ENDERPEARL?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
enderpearl_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in enderpearl_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.enderpearl.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.enderpearl.* true"
        - flag player region_flags_owned:->:enderpearl
        - inventory close
        - narrate <&5>---------------------------------
        - narrate "Ты купил <&5>enderpearl"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват enderpearl allow/deny"
        - narrate <&5>---------------------------------
        after player clicks no_item in enderpearl_flag_inv:
        - inventory close
        after player clicks back_item in enderpearl_flag_inv:
        - inventory open d:rg_flags_inv
#
chorus_fruit_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить CHORUS-FRUIT-TELEPORT?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
chorus_fruit_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in chorus_fruit_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.chorus-fruit-teleport.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.chorus-fruit-teleport.* true"
        - flag player region_flags_owned:->:chorus-fruit-teleport
        - inventory close
        - narrate <&5>--------------------------------------------
        - narrate "Ты купил <&5>chorus-fruit-teleport"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват chorus-fruit-teleport allow/deny"
        - narrate <&5>--------------------------------------------
        after player clicks no_item in chorus_fruit_flag_inv:
        - inventory close
        after player clicks back_item in chorus_fruit_flag_inv:
        - inventory open d:rg_flags_inv
#
greeting_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить GREETING?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
greeting_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in greeting_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.greeting.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.greeting.* true"
        - flag player region_flags_owned:->:greeting
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>greeting"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват greeting текст"
        - narrate <&5>------------------------------
        after player clicks no_item in greeting_flag_inv:
        - inventory close
        after player clicks back_item in greeting_flag_inv:
        - inventory open d:rg_flags_inv
#
farewell_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить FAREWELL?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
farewell_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in farewell_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.farewell.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.farewell.* true"
        - flag player region_flags_owned:->:farewell
        - inventory close
        - narrate <&5>------------------------------
        - narrate "Ты купил <&5>farewell"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват farewell текст"
        - narrate <&5>------------------------------
        after player clicks no_item in farewell_flag_inv:
        - inventory close
        after player clicks back_item in farewell_flag_inv:
        - inventory open d:rg_flags_inv
#
item_rotation_flag_inv:
    type: inventory
    inventory: chest
    title: <bold><&5>Купить ITEM-FRAME-ROTATION?
    size: 18
    gui: true
    slots:
    - [yes_item] [yes_item] [yes_item] [yes_item] [] [no_item] [no_item] [no_item] [no_item]
    - [back_item] [] [] [] [] [] [] [] []
#
item_rotation_flag_inv_world:
    type: world
    events:
        after player clicks yes_item in item_rotation_flag_inv:
        - if !<player.in_group[citizen]>:
            - inventory close
            - narrate <&5>--------------------------------------------------
            - narrate "Для покупок в магазине звёзд нужно быть Гражданином"
            - narrate <&5>--------------------------------------------------
            - stop
        - if <player.playerpoints_points> < 2:
            - inventory close
            - narrate <&5>---------------------------
            - narrate "Недостаточно звёзд, нужно: 2"
            - narrate <&5>---------------------------
            - stop
        - if <player.has_permission[worldguard.region.flag.flags.item-frame-rotation.*]>:
            - inventory close
            - narrate <&5>------------------------
            - narrate "У тебя уже есть этот флаг"
            - narrate <&5>------------------------
            - stop
        - playerpoints take 2
        - execute as_server "lp user <player.name> permission set worldguard.region.flag.flags.item-frame-rotation.* true"
        - flag player region_flags_owned:->:item-frame-rotation
        - inventory close
        - narrate <&5>------------------------------------------
        - narrate "Ты купил <&5>item-frame-rotation"
        - narrate "Чтобы поставить флаг на приват:"
        - narrate "/rg f приват item-frame-rotation allow/deny"
        - narrate <&5>------------------------------------------
        after player clicks no_item in item_rotation_flag_inv:
        - inventory close
        after player clicks back_item in item_rotation_flag_inv:
        - inventory open d:rg_flags_inv
#
yes_item:
    type: item
    material: emerald_block
    display name: <&a>Да
#
no_item:
    type: item
    material: redstone_block
    display name: <&c>Нет
#
back_item:
    type: item
    material: arrow
    display name: Вернуться
#
next_page_item:
    type: item
    material: nether_star
    display name: Дальше
#
# Таск для выдачи флага с флагами тем, кто покупал до добавления этой строки в скрипт
rg_flags_list_flagging_task:
    type: task
    script:
    - define player <server.match_offline_player[groderalnas]>
    - flag <[player]> region_flags_owned:->:mob-spawning