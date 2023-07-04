﻿#language: ru

@tree

Функционал: проверка формы элемента справочника

Как тестировщик я хочу
проверить доступность вкладок
чтобы убедиться, что пользователь не ошибется 

Сценарий: проверка вкладок
* открытие формы
	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Организация (создание)'
	И я устанавливаю флаг с именем 'OurCompany'
* Установка галки	
	И я устанавливаю флаг с именем 'OurCompany'
	И элемент формы "Валюты" присутствует на форме 
* Снятие галки		
     И я снимаю флаг с именем 'OurCompany'	
	 И элемент формы "Валюты" существует и невидим на форме
 
 Сценарий: проверка функциональности константы
      И Я устанавливаю в константу "UseCompanies" значение "False"
      Когда В панели разделов я выбираю 'Закупки'
      И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
      Тогда открылось окно 'Заказы покупателей'
	  И я нажимаю на кнопку с именем 'FormCreate'
	  И элемент формы "Организация" отсутствует на форме
	  	                  