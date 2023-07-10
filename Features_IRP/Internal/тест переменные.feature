﻿#language: ru

@tree

Функционал: тестируем переменные

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: локальные переменные
И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров и услуг'
Когда открылось окно 'Поступление товаров и услуг * от *'
И я запоминаю текущее окно как "ЗаголовокОкнапоступлениеТоваров"
и я вывожу значение переменной "ЗаголовокОкнапоступлениеТоваров"
И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
Тогда открылось окно 'Движения документа'
И в табличном документе 'ResultTable' я перехожу к ячейке "R1C1"
И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1001 Закупки'
И я нажимаю на кнопку с именем 'GenerateReport'
Тогда табличный документ "ResultTable" равен:
	| '$ЗаголовокОкнапоступлениеТоваров$' | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
	| 'Движения документа по регистрам'                          | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
	| 'Регистр  "R1001 Закупки"'                                 | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
	| ''                                                         | 'Period'              | 'Resources'  | ''      | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | 'Attributes'        |
	| ''                                                         | ''                    | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                                   | 'Характеристика'          | 'Ключ строки'                          | 'Отложенный расчет' |
	| ''                                                         | '05.07.2023 12:14:29' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 05.07.2023 12:14:29' | 'Товар без характеристик' | 'a5e74e7e-0871-4687-a9d9-b0a295f0dd57' | 'Нет'               |
	| ''                                                         | '05.07.2023 12:14:29' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 05.07.2023 12:14:29' | 'Услуга'                  | '38f7d325-b56a-4f08-8c2b-aab623d88f3f' | 'Нет'               |
	| ''                                                         | '05.07.2023 12:14:29' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 05.07.2023 12:14:29' | 'Товар без характеристик' | 'a5e74e7e-0871-4687-a9d9-b0a295f0dd57' | 'Нет'               |
	| ''                                                         | '05.07.2023 12:14:29' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 05.07.2023 12:14:29' | 'Услуга'                  | '38f7d325-b56a-4f08-8c2b-aab623d88f3f' | 'Нет'               |
	| ''                                                         | '05.07.2023 12:14:29' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 05.07.2023 12:14:29' | 'Товар без характеристик' | 'a5e74e7e-0871-4687-a9d9-b0a295f0dd57' | 'Да'                |
	| ''                                                         | '05.07.2023 12:14:29' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 05.07.2023 12:14:29' | 'Услуга'                  | '38f7d325-b56a-4f08-8c2b-aab623d88f3f' | 'Да'                |
	| ''                                                         | '05.07.2023 12:14:29' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 05.07.2023 12:14:29' | 'Товар без характеристик' | 'a5e74e7e-0871-4687-a9d9-b0a295f0dd57' | 'Нет'               |
	| ''                                                         | '05.07.2023 12:14:29' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 05.07.2023 12:14:29' | 'Услуга'                  | '38f7d325-b56a-4f08-8c2b-aab623d88f3f' | 'Нет'               |
	| ''                                                         | '05.07.2023 12:14:29' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 05.07.2023 12:14:29' | 'Товар без характеристик' | 'a5e74e7e-0871-4687-a9d9-b0a295f0dd57' | 'Нет'               |
	| ''                                                         | '05.07.2023 12:14:29' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 05.07.2023 12:14:29' | 'Услуга'                  | '38f7d325-b56a-4f08-8c2b-aab623d88f3f' | 'Нет'               |

Сценарий: глобальные переменные
И я закрываю все окна клиентского приложения
И я удаляю переменную '$$СсылкаНаТоварбезХарактеристик$$'
И я сохраняю навигационную ссылку текущего окна в переменную "$$СсылкаНаТоварбезХарактеристик$$"
И Я открываю навигационную ссылку "$$СсылкаНаТоварбезХарактеристик$$"
