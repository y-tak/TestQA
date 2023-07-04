﻿#language: ru

@tree

Функционал: запуск открытие отчетов и обработок

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы объекта "AnaliseDocumentMovements"

	Дано Я открываю основную форму обработки "AnaliseDocumentMovements"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму обработки AnaliseDocumentMovements"
	И Я закрываю текущее окно


Сценарий: Открытие формы объекта "DataHistory"

	Дано Я открываю основную форму обработки "DataHistory"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму обработки DataHistory"
	И Я закрываю текущее окно


Сценарий: Открытие формы объекта "MobileDesktop"

	Дано Я открываю основную форму обработки "MobileDesktop"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму обработки MobileDesktop"
	И Я закрываю текущее окно


Сценарий: Открытие формы объекта "MobileInvent"

	Дано Я открываю основную форму обработки "MobileInvent"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму обработки MobileInvent"
	И Я закрываю текущее окно


Сценарий: Открытие формы объекта "PointOfSale"

	Дано Я открываю основную форму обработки "PointOfSale"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму обработки PointOfSale"
	И Я закрываю текущее окно


Сценарий: Открытие формы объекта "PrintLabels"

	Дано Я открываю основную форму обработки "PrintLabels"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму обработки PrintLabels"
	И Я закрываю текущее окно


Сценарий: Открытие формы объекта "Procurement"

	Дано Я открываю основную форму обработки "Procurement"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму обработки Procurement"
	И Я закрываю текущее окно


Сценарий: Открытие формы объекта "ScanBarcode"

	Дано Я открываю основную форму обработки "ScanBarcode"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму обработки ScanBarcode"
	И Я закрываю текущее окно


Сценарий: Открытие формы объекта "StoreKeeperWorkspace"

	Дано Я открываю основную форму обработки "StoreKeeperWorkspace"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму обработки StoreKeeperWorkspace"
	И Я закрываю текущее окно

