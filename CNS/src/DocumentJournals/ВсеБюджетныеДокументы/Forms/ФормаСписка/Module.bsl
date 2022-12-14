
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)

	Если Параметры.Свойство("Заголовок") Тогда
		Заголовок = Параметры.Заголовок;
	КонецЕсли;
	
	Параметры.Свойство("ОрганизацияСсылка", ОрганизацияСсылка); 
	Параметры.Свойство("ПодразделениеСсылка", ПодразделениеСсылка);  
	Параметры.Свойство("ФизическоеЛицоСсылка", ФизическоеЛицоСсылка);  
	Если ЗначениеЗаполнено(ОрганизацияСсылка) 
			ИЛИ ЗначениеЗаполнено(ПодразделениеСсылка)
			ИЛИ ЗначениеЗаполнено(ФизическоеЛицоСсылка) Тогда

		
	Иначе
		
		СтруктураПараметровОтбора = Новый Структура();
		//Бюджетирование.ДобавитьПараметрОтбора(СтруктураПараметровОтбора, "ФизическоеЛицо",
		//	Новый ОписаниеТипов("СправочникСсылка.ФизическиеЛица"), НСтр("ru = 'Сотрудник'"));
		Бюджетирование.ДобавитьПараметрОтбора(СтруктураПараметровОтбора, "Подразделение",
			Новый ОписаниеТипов("СправочникСсылка.ПодразделенияОрганизаций"), НСтр("ru = 'Подразделение'"));
		Бюджетирование.ДобавитьПараметрОтбора(СтруктураПараметровОтбора, "Организация",
			Новый ОписаниеТипов("СправочникСсылка.Организации"), НСтр("ru = 'Организация'"));
		Бюджетирование.ПриСозданииНаСервереФормыСДинамическимСписком(ЭтотОбъект, "Список",,
			СтруктураПараметровОтбора, "СписокКритерииОтбора");
		
	КонецЕсли;	

	// СтандартныеПодсистемы.ПодключаемыеКоманды
	ПараметрыРазмещения = ПодключаемыеКоманды.ПараметрыРазмещения();
	ПараметрыРазмещения.КоманднаяПанель = Элементы.ФормаКоманднаяПанель;
	ПодключаемыеКоманды.ПриСозданииНаСервере(ЭтотОбъект, ПараметрыРазмещения);
	// Конец СтандартныеПодсистемы.ПодключаемыеКоманды
	
	// БлокировкаИзмененияОбъектов
	//БлокировкаИзмененияОбъектов.ПриСозданииНаСервереФормыСписка(ЭтотОбъект, Элементы.КоманднаяПанельФормы);
	// Конец БлокировкаИзмененияОбъектов
	
	
КонецПроцедуры
