﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>

//указывается перед шагами где произойдет падение
@screenshot
@recordvideo

///пауза использования для фоновиков
И Я жду завершения выполнения всех фоновых заданий в течение 10 секунд (Расширение)
И Я жду завершения выполнения всех фоновых заданий (Расширение)
Дано Ожидаем завершения фонового формирования отчета в течение "10" секунд
