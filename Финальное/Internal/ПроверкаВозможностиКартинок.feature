﻿#language: ru

@tree

Функционал: <описание фичи>

Как Менеджер я хочу
добавить картинки к номенклатуре 
чтобы можно было добавить   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверяем возможность добавлния картинок
когда экспорт картинок
когда Загрузка файла Новый тортик
* открываем этот Товар
	И В командном интерфейсе я выбираю 'Закупки' 'Товары'
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул' |  'Наименование' | 'Поставщик'   |
		| 'Т78'     |   'Торт '       | 'Мосхлеб ОАО' |
	И в таблице "Список" я выбираю текущую строку	
* открываем выбор картинок
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
* выбираем картинку	
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' | 'Код'       |
		| 'НовыйТорт'    | '000000017' |
	И в таблице "Список" я выбираю текущую строку	
	И я нажимаю на кнопку с именем 'ОбновитьКартинку'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Торт (Товар)' в течение 20 секунд
				
