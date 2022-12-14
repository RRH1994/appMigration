
Функция ОписаниеТиповСуммаРезультат()
	Возврат	Новый ОписаниеТипов("Число", , , Новый КвалификаторыЧисла(15, 2));
КонецФункции

#Область КонструкторыКоллекций

Функция ТаблицаНачислений() Экспорт
		
	Начисления = Новый ТаблицаЗначений;
	Начисления.Колонки.Добавить("ФизическоеЛицо", Новый ОписаниеТипов("СправочникСсылка.ФизическиеЛица")); 
	Начисления.Колонки.Добавить("МесяцНачисления", Новый ОписаниеТипов("Дата"));
	Начисления.Колонки.Добавить("ВидНачисления", Новый ОписаниеТипов("СправочникСсылка.ВидыНачислений"));
	Начисления.Колонки.Добавить("ДатаНачала", Новый ОписаниеТипов("Дата"));
	Начисления.Колонки.Добавить("ДатаОкончания", Новый ОписаниеТипов("Дата"));
	Начисления.Колонки.Добавить("ИдентификаторСтроки", Новый ОписаниеТипов("Число"));
	
	Начисления.Колонки.Добавить("Организация", Новый ОписаниеТипов("СправочникСсылка.Организации"));
	Начисления.Колонки.Добавить("Подразделение", Новый ОписаниеТипов("СправочникСсылка.ПодразделенияОрганизаций"));
	Начисления.Колонки.Добавить("МестоВозникновенияЗатрат", Новый ОписаниеТипов("СправочникСсылка.МестаВозникновенияЗатрат"));
	
	Начисления.Колонки.Добавить("СпособОтраженияРезультата", Новый ОписаниеТипов("ПеречислениеСсылка.СпособыОтраженияРезультатов"));
	Начисления.Колонки.Добавить("ПериодДействия", Новый ОписаниеТипов("Дата"));
	Начисления.Колонки.Добавить("ПериодРегистрации", Новый ОписаниеТипов("Дата"));
	
	Начисления.Колонки.Добавить("КодГрейда", Новый ОписаниеТипов("СправочникСсылка.КодыГрейдов"));
	Начисления.Колонки.Добавить("Должность", Новый ОписаниеТипов("СправочникСсылка.Должности"));
	Начисления.Колонки.Добавить("ПозицияШтатногоРасписания", Новый ОписаниеТипов("СправочникСсылка.ПозицииШтатногоРасписания"));

	Начисления.Колонки.Добавить("Сумма", ОписаниеТиповСуммаРезультат());
	Начисления.Колонки.Добавить("Результат", ОписаниеТиповСуммаРезультат());
	
	Возврат Начисления;
	
КонецФункции

Функция ТаблицаВзносы() Экспорт
		
	ТаблицаВзносы = Новый ТаблицаЗначений;
	ТаблицаВзносы.Колонки.Добавить("ФизическоеЛицо", Новый ОписаниеТипов("СправочникСсылка.ФизическиеЛица"));
	ТаблицаВзносы.Колонки.Добавить("ВидНачисления", Новый ОписаниеТипов("СправочникСсылка.ВидыНачислений"));
	ТаблицаВзносы.Колонки.Добавить("ВидВнебюджетногоФонда", Новый ОписаниеТипов("СправочникСсылка.ВидыВнебюджетныхФондов"));
	ТаблицаВзносы.Колонки.Добавить("ТипНалога", Новый ОписаниеТипов("СправочникСсылка.ВидыНачислений"));
	ТаблицаВзносы.Колонки.Добавить("МесяцНачисления", Новый ОписаниеТипов("Дата"));
	ТаблицаВзносы.Колонки.Добавить("ДатаНачала", Новый ОписаниеТипов("Дата"));
	ТаблицаВзносы.Колонки.Добавить("ДатаОкончания", Новый ОписаниеТипов("Дата"));
	ТаблицаВзносы.Колонки.Добавить("ИдентификаторСтроки", Новый ОписаниеТипов("Число"));
	
	ТаблицаВзносы.Колонки.Добавить("Организация", Новый ОписаниеТипов("СправочникСсылка.Организации"));
	ТаблицаВзносы.Колонки.Добавить("Подразделение", Новый ОписаниеТипов("СправочникСсылка.ПодразделенияОрганизаций"));
	ТаблицаВзносы.Колонки.Добавить("МестоВозникновенияЗатрат", Новый ОписаниеТипов("СправочникСсылка.МестаВозникновенияЗатрат"));
	
	ТаблицаВзносы.Колонки.Добавить("СпособОтраженияРезультата", Новый ОписаниеТипов("ПеречислениеСсылка.СпособыОтраженияРезультатов"));
	ТаблицаВзносы.Колонки.Добавить("ПериодРегистрации", Новый ОписаниеТипов("Дата"));
	ТаблицаВзносы.Колонки.Добавить("ПериодДействия", Новый ОписаниеТипов("ПеречислениеСсылка.ПериодыХраненияЗначений")); 
	
	ТаблицаВзносы.Колонки.Добавить("КодГрейда", Новый ОписаниеТипов("СправочникСсылка.КодыГрейдов"));
	ТаблицаВзносы.Колонки.Добавить("Должность", Новый ОписаниеТипов("СправочникСсылка.Должности"));
	ТаблицаВзносы.Колонки.Добавить("ПозицияШтатногоРасписания", Новый ОписаниеТипов("СправочникСсылка.ПозицииШтатногоРасписания"));

	ТаблицаВзносы.Колонки.Добавить("Сумма", ОписаниеТиповСуммаРезультат());
	ТаблицаВзносы.Колонки.Добавить("Результат", ОписаниеТиповСуммаРезультат());
	
	Возврат ТаблицаВзносы;
	
КонецФункции

Функция ТаблицаНалогов() Экспорт
	
	ТаблицаВзносы = Новый ТаблицаЗначений;
	ТаблицаВзносы.Колонки.Добавить("ГодНачисления", Новый ОписаниеТипов("Дата"));
	ТаблицаВзносы.Колонки.Добавить("Период", Новый ОписаниеТипов("Дата"));
	ТаблицаВзносы.Колонки.Добавить("ТипНалога", Новый ОписаниеТипов("СправочникСсылка.ВидыНачислений"));
	ТаблицаВзносы.Колонки.Добавить("ВидВнебюджетногоФонда", Новый ОписаниеТипов("СправочникСсылка.ВидыВнебюджетныхФондов"));
	ТаблицаВзносы.Колонки.Добавить("Сумма", ОписаниеТиповСуммаРезультат());
	ТаблицаВзносы.Колонки.Добавить("Результат", ОписаниеТиповСуммаРезультат());
	
	Возврат ТаблицаВзносы;
	
КонецФункции	

#КонецОбласти