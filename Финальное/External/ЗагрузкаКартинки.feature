﻿#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Загрузка файла Новый тортик

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Загрузка файла Новый тортик

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'  | 'Улица'    | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта' | 'Факс' | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000012' | 'Мосхлеб ОАО'  | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '456789' | 'Россия' | 'Москва' | 'Петровка' | '12'  | '+7(999)234-78-64' | 'mh@hleb.ru'       | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'Поставка хлеба'           | 'Громышева П.Р.' | 55.762744 | 37.618102 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'   | ''                                                                   | ''       | ''       | ''       | ''         | ''    | ''                 | ''                 | ''     | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки'                                                             | 'Вид'                    | 'Штрихкод' | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'     | '000000032' | 'Торт '        | 'Т78'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eb43bdcf26e' | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Торт "Праздничный".</p>\n<p>Три бисквитных коржа со вкусом шоколада щедро залиты банановым кремом.<br></p>\n<p><span style=" font-weight: bold;">Вес </span>- 1кг.</p>\n<p><span style=" font-weight: bold;">Страна-производитель</span> - Россия.</p>\n</body></html>' |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'           | ''                                                                  | 'True'      | '000000011' | 'Продукты'     | ''        | ''                                                                       | ''                                                                         | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | ''       |

	// Справочник.ХранимыеФайлы

	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование' | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 'ИмяФайла'    | 'Подпись'                                                   | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=96abf4a4751fbfed11ee26d174a77438' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | '000000017' | 'НовыйТорт'    | 'ValueStorage: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' | 'тортик.jfif' | 'ValueStorage:AgFTS2/0iI3BTqDV67a9oKcN42CAgPe791crhSrVAgA=' | 'False'    | 'False'      | 'False'       |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eb43bdcf26e' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | '000000012' | 'Торт '        | 'ValueStorage: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' | 'Торт.jpg'    | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9'                     | 'False'    | 'False'      | 'False'       |

