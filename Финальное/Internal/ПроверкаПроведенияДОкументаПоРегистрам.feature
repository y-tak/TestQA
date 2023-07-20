﻿#language: ru

@tree

Функционал: проверка заполнеия и проведения документа по регистрам

Как Мегеджер по продажам я хочу
проверить движения документа Продажи
чтобы убедиться что документ делает движение по Регистрам  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка заполнения и провдения по регистрам документа Продажи
когда экпорт документа Продажи
Дано Я открываю навигационную ссылку "e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fe4" 
И я нажимаю на кнопку с именем 'ФормаПровести'
И я выполняю код встроенного языка на сервере
	|'Документы.РасходТовара.НайтиПоНомеру("000000017").получитьОбъект().Записать(режимЗаписиДокумента.Проведение);'|

Сценарий: Проверить по регистру взаиморасчетов
Дано Я открываю навигационную ссылку "e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fe4" 
И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр взаиморасчетов с контрагентами'
Тогда таблица "Список" стала равной:
	| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Контрагент'      | 'Сумма'     | 'Валюта' |
	| '20.12.2020 23:58:45' | 'Продажа 000000017 от 20.12.2020 23:58:45' | '1'            | 'Попов Б.В. ИЧП ' | '12 000,00' | 'Рубли'  |

Сценарий: Проверить по регистру взаиморасчетов
Дано Я открываю навигационную ссылку "e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fe4" 
И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр продаж'
Тогда таблица "Список" стала равной:
	| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Покупатель'      | 'Товар'  | 'Количество' | 'Сумма'     |
	| '20.12.2020 23:58:45' | 'Продажа 000000017 от 20.12.2020 23:58:45' | '1'            | 'Попов Б.В. ИЧП ' | 'Йогурт' | '300,00'     | '12 000,00' |

Сценарий: Проверить по регистру взаиморасчетов
Дано Я открываю навигационную ссылку "e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fe4" 
И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр товарных запасов'
Тогда таблица "Список" стала равной:
	| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Товар'  | 'Склад' | 'Количество' |
	| '20.12.2020 23:58:45' | 'Продажа 000000017 от 20.12.2020 23:58:45' | '1'            | 'Йогурт' | 'Малый' | '300,00'     |

И я закрываю все окна клиентского приложения

