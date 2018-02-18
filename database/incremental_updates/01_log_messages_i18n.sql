use lords;

DROP TABLE IF EXISTS `log_message_text_i18n`;
CREATE TABLE `log_message_text_i18n` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO log_message_text_i18n (language_id, code, message) VALUES
(2, 'agrees_to_draw', 'Согласен на ничью'),
(1, 'agrees_to_draw', 'Agrees to draw'),
(2, 'disagrees_to_draw', 'Не согласен на ничью'),
(1, 'disagrees_to_draw', 'Disagrees to draw'),
(2, 'unit_shoots_unit', '{unit0} стреляет в {unitakk1} {damage2}'),
(1, 'unit_shoots_unit', '{unit0} shoots at {unit1} {damage2}'),
(2, 'unit_shoots_unit_miss', '{unit0} стреляет в {unitakk1} (Промах)'),
(1, 'unit_shoots_unit_miss', '{unit0} shoots at {unit1} (Miss)'),
(2, 'buys_card', 'Купил карту'),
(1, 'buys_card', 'Buys a card'),
(2, 'building_repair', '{building0} восстанавливает {heath1}'),
(1, 'building_repair', '{building0} is repaired {heath1}'),
(2, 'mind_control', '{unit0} начинает подчиняться игроку {player1}'),
(1, 'mind_control', '{player1} now controls {unit0}'),
(2, 'mind_control_own_unit', '{unit0} продолжает подчиняться игроку {player1}'),
(1, 'mind_control_own_unit', '{player1} continues to controls {unit0}'),
(2, 'polza_repair', 'Польза: Починить все здания'),
(1, 'polza_repair', 'White dice: Repair all buildings'),
(2, 'polza_gold', 'Польза: +60 золота'),
(1, 'polza_gold', 'White dice: +60 gold'),
(2, 'polza_cards', 'Польза: Взять 2 карты'),
(1, 'polza_cards', 'White dice: take 2 cards'),
(2, 'polza_resurrect', 'Польза: Воскресить любого юнита'),
(1, 'polza_resurrect', 'White dice: Resurrect any unit'),
(2, 'polza_move_from_zone', 'Польза: Переместить всех юнитов из выбранной зоны'),
(1, 'polza_move_from_zone', 'White dice: Move all units out of a chosen zone'),
(2, 'polza_steal_move_building', 'Польза: Переместить и присвоить чужое здание'),
(1, 'polza_steal_move_building', 'White dice: Steal and move someone else''s building'),
(2, 'new_card', 'Новая карта {card0}'),
(1, 'new_card', 'New card {card0}'),
(2, 'no_more_cards', 'Карт больше нет'),
(1, 'no_more_cards', 'No more cards in the deck'),
(2, 'player_loses_gold', '{player0} теряет {gold1}'),
(1, 'player_loses_gold', '{player0} loses {gold1}'),
(2, 'players_cards', 'Карты игрока {player0}:'),
(1, 'players_cards', '{player0}''s cards:'),
(2, 'card_name', '{card0}'),
(1, 'card_name', '{card0}'),
(2, 'card_stolen', 'Похищена карта {card0}'),
(1, 'card_stolen', '{card0} is stolen'),
(2, 'unit_appears_in_cell', 'В клетке {cell1} появляется {unit0}'),
(1, 'unit_appears_in_cell', '{unit0} appears in {cell1}'),
(2, 'vred_gold', 'Вред: -60 золота выбранному игроку'),
(1, 'vred_gold', 'Black dice: Chosen player loses 60 gold'),
(2, 'vred_kill', 'Вред: Убить любого юнита'),
(1, 'vred_kill', 'Black dice: Kill any unit'),
(2, 'vred_destroy_building', 'Вред: Разрушить любое здание'),
(1, 'vred_destroy_building', 'Black dice: Destroy any building (except castles)'),
(2, 'vred_move_units_to_random_zone', 'Вред: Переместить всех юнитов в случайную зону'),
(1, 'vred_move_units_to_random_zone', 'Black dice: Move all units to a random zone'),
(2, 'vred_random_player_takes_card', 'Вред: Случайный игрок тянет у всех по карте'),
(1, 'vred_random_player_takes_card', 'Black dice: Random player steals a card from each other player'),
(2, 'vred_move_building', 'Вред: Переместить чужое здание'),
(1, 'vred_move_building', 'Black dice: Move someone else''s building'),
(2, 'unit_shoots_building', '{unit0} стреляет в {building1} {damage2}'),
(1, 'unit_shoots_building', '{unit0} shoots at {building1} {damage2}'),
(2, 'unit_shoots_building_miss', '{unit0} стреляет в {building1} (Промах)'),
(1, 'unit_shoots_building_miss', '{unit0} shoots at {building1} (Miss)'),
(2, 'unit_magic_resistance', 'На {unitakk0} не действует магия'),
(1, 'unit_magic_resistance', '{unit0} resists magic'),
(2, 'unit_mechanical', 'Механический {unit0} ничего не почувствовал'),
(1, 'unit_mechanical', 'Mechanical {unit0} does not feel anything'),
(2, 'miss_unit', 'Промах: {unit0}'),
(1, 'miss_unit', 'Miss: {unit0}'),
(2, 'miss_building', 'Промах: {building0}'),
(1, 'miss_building', 'Miss: {building0}'),
(2, 'miss_rus_rul', '{unit0} отделался легким испугом'),
(1, 'miss_rus_rul', '{unit0} has a narrow escape'),
(2, 'end_turn', '{player0} завершил ход'),
(1, 'end_turn', '{player0} ends turn'),
(2, 'end_turn_timeout', 'У игрока {player0} закончилось время хода'),
(1, 'end_turn_timeout', '{player0} has run out of time'),
(2, 'resurrect', '{player0} воскресил {unitakk1}'),
(1, 'resurrect', '{player0} resurrects {unit1}'),
(2, 'unit_goes_mad', '{unit0} сошел с ума'),
(1, 'unit_goes_mad', '{unit0} goes mad'),
(2, 'unit_becomes_not_mad', '{unit0} больше не сошел с ума'),
(1, 'unit_becomes_not_mad', '{unit0} restores sanity'),
(2, 'unit_chess_knight', '{unit0} начинает ходить шахматным конем'),
(1, 'unit_chess_knight', '{unit0} now moves as a chess knight'),
(2, 'unit_paralyzed', '{unit0} парализован'),
(1, 'unit_paralyzed', '{unit0} is paralyzed'),
(2, 'unit_unparalyzed', '{unit0} больше не парализован'),
(1, 'unit_unparalyzed', '{unit0} is not paralyzed anymore'),
(2, 'building_destroyed', 'Здание {building0} разрушено'),
(1, 'building_destroyed', '{building0} is destroyed'),
(2, 'castle_destroyed', '{building0} разрушен'),
(1, 'castle_destroyed', '{building0} is destroyed'),
(2, 'unit_drinks_health', '{unit0} выпивает {health1}'),
(1, 'unit_drinks_health', '{unit0} drinks {health1}'),
(2, 'npc_turn', 'Ход NPC'),
(1, 'npc_turn', 'NPC turn'),
(2, 'unit_restores_health', '{unit0} восстанавливает {health1}'),
(1, 'unit_restores_health', '{unit0} restores {health1}'),
(2, 'unit_killed', '{unit0} убит'),
(1, 'unit_killed', '{unit0} is dead'),
(2, 'unit_damage', '{unit0} {damage1}'),
(1, 'unit_damage', '{unit0} {damage1}'),
(2, 'building_damage', '{building0} {damage1}'),
(1, 'building_damage', '{building0} {damage1}'),
(2, 'unit_already_mad', '{unit0} уже сошел с ума'),
(1, 'unit_already_mad', '{unit0} is already pretty mad'),
(2, 'unit_resurrects', '{unit0} воскрешает {unitakk1}'),
(1, 'unit_resurrects', '{unit0} resurrects {unit1}'),
(2, 'sacrifice', '{unit0} жертвует {unitakk1} за {unitakk2}'),
(1, 'sacrifice', '{unit0} sacrifices {unit1} for {unit2}'),
(2, 'unit_is_such_a_unit', '{unit0} такой {unit0}'),
(1, 'unit_is_such_a_unit', '{unit0} is such a {unit0}'),
(2, 'player_exit', '{player0} вышел из игры'),
(1, 'player_exit', '{player0} left the game'),
(2, 'plays_card', 'Сыграл карту {card0}'),
(1, 'plays_card', 'Plays card {card0}'),
(2, 'building_completely_repaired', 'Здание {building0} починено'),
(1, 'building_completely_repaired', '{building0} is repaired'),
(2, 'send_money', 'Отправил игроку {player0} {gold1}'),
(1, 'send_money', 'Sends {player0} {gold1}'),
(2, 'restore_magic_shield', '{unit0} восстанавливает магический щит'),
(1, 'restore_magic_shield', '{unit0} restores magical shield'),
(2, 'loses_magic_shield', '{unit0} теряет магический щит'),
(1, 'loses_magic_shield', '{unit0} loses magical shield'),
(2, 'gets_magic_shield', '{unit0} получает магический щит'),
(1, 'gets_magic_shield', '{unit0} gets magical shield'),
(2, 'building_sinks', '{building0} тонет в воде'),
(1, 'building_sinks', '{building0} sinks'),
(2, 'unit_drowns', '{unit0} тонет в воде'),
(1, 'unit_drowns', '{unit0} drowns'),
(2, 'moves_units', 'Походил юнитами'),
(1, 'moves_units', 'Moves units'),
(2, 'take_subsidy', 'Взял субсидию'),
(1, 'take_subsidy', 'Sells stones'),
(2, 'unit_attaches', '{unit0} цепляется к юниту {unit1}'),
(1, 'unit_attaches', '{unit0} is attached to {unit1}'),
(2, 'unit_healed', '{unit0} исцелен'),
(1, 'unit_healed', '{unit0} is healed'),
(2, 'unit_gets_attack', '{unit0} получает {attack1}'),
(1, 'unit_gets_attack', '{unit0} gets {attack1}'),
(2, 'unit_gets_moves', '{unit0} получает {moves1}'),
(1, 'unit_gets_moves', '{unit0} gets {moves1}'),
(2, 'unit_gets_health', '{unit0} получает {health1}'),
(1, 'unit_gets_health', '{unit0} gets {health1}'),
(2, 'unit_levelup_health', '{unit0} получает уровень и {health1}'),
(1, 'unit_levelup_health', '{unit0} achieves next level and gets {health1}'),
(2, 'unit_levelup_attack', '{unit0} получает уровень и {attack1}'),
(1, 'unit_levelup_attack', '{unit0} achieves next level and gets {attack1}'),
(2, 'unit_levelup_moves', '{unit0} получает уровень и {moves1}'),
(1, 'unit_levelup_moves', '{unit0} achieves next level and gets {moves1}'),
(2, 'unit_pushes', '{unit0} пихает {unitakk1}'),
(1, 'unit_pushes', '{unit0} pushes {unit1}'),
(2, 'unit_becomes_vampire', '{unit0} становится вампиром'),
(1, 'unit_becomes_vampire', '{unit0} turns into a vampire'),
(2, 'vred_got_card_from', 'Новая карта {card1} от игрока {player0}'),
(1, 'vred_got_card_from', 'Got {card1} from {player0}'),
(2, 'vred_gave_card_to', '{player0} вытянул карту {card1}'),
(1, 'vred_gave_card_to', '{player0} takes card {card1}'),
(2, 'building_opens', '{building0} открывается'),
(1, 'building_opens', '{building0} opens'),
(2, 'building_closes', '{building0} закрывается'),
(1, 'building_closes', '{building0} closes'),
(2, 'unit_casts_fb', '{unit0} колдует огненный шар на {unitakk1}'),
(1, 'unit_casts_fb', '{unit0} casts Fireball on {unit1}'),
(2, 'cast_unsuccessful', 'Колдовство не удалось'),
(1, 'cast_unsuccessful', 'Cast failed'),
(2, 'unit_heals', '{unit0} лечит {unitakk1}'),
(1, 'unit_heals', '{unit0} heals {unit1}');

