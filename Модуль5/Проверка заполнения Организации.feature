﻿#language: ru

@tree


Функционал: заказ покупателя

Как Менеджер я хочу
зафиксировать протестировать поля заказа
чтобы проанализировать  заполнение

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0401 подготовительный сценарий (заказ клиента)
   Когда экспорт основных данных

Сценарий: проверка заполнения полей а Заказе покупателя и проверка Организации
* заполнение полей

	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Partner"	
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'            |
		| '2'   | 'Клиент 2 (2 соглашения)' |
	И в таблице "List" я выбираю текущую строку
	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
	И я нажимаю кнопку выбора у поля с именем "Agreement"
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'                                        | 'Вид'     | 'Вид взаиморасчетов' |
		| '2'   | 'Индивидуальное соглашение 1 (расчет по соглашениям)' | 'Обычное' | 'По соглашениям'     |			
	И в таблице "List" я выбираю текущую строку
	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
	И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
	И в таблице "ItemList" я активизирую поле с именем "ItemListItem"
	И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItem"
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование' | 'Ссылка' |
		| '2'   | 'Товар без характеристик'        | 'Товар без характеристик'  |	
	И в таблице "List" я выбираю текущую строку	
	И в таблице "ItemList" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormWrite'
* проверка заполнения поля Партнер
  И я жду, что поле с именем "Partner" перестанет быть пустым в течение 30 секунд
  И я жду, что поле с именем "Agreement" перестанет быть пустым в течение 30 секунд	      	      
  И я жду, что поле с именем "LegalName" перестанет быть пустым в течение 30 секунд	
* проверка заполнения Организации
	//Если поле с именем "Company" заполнено Тогда
	Если элемент формы с именем 'Company' стал равен '' Тогда 
		 И я нажимаю кнопку выбора у поля с именем "Company"		 
		 И в таблице "List" я перехожу к строке:
		 | 'Код' | 'Наименование'           |
		 | '2'   | 'Собственная компания 2' |
		 И в таблице "List" я выбираю текущую строку


		 		
		
		