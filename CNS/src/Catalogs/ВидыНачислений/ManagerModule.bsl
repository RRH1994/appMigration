#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ПрограммныйИнтерфейс

#Область ДляВызоваИзДругихПодсистем

// СтандартныеПодсистемы.ВерсионированиеОбъектов

// Определяет настройки объекта для подсистемы ВерсионированиеОбъектов.
//
// Параметры:
//  Настройки - Структура - настройки подсистемы.
Процедура ПриОпределенииНастроекВерсионированияОбъектов(Настройки) Экспорт

КонецПроцедуры

// Конец СтандартныеПодсистемы.ВерсионированиеОбъектов

// СтандартныеПодсистемы.Печать

// Заполняет список команд печати.
// 
// Параметры:
//   КомандыПечати - ТаблицаЗначений - состав полей см. в функции УправлениеПечатью.СоздатьКоллекциюКомандПечати.
//
Процедура ДобавитьКомандыПечати(КомандыПечати) Экспорт
	//	
КонецПроцедуры

// Формирует печатные формы.
//
// Параметры:
//  МассивОбъектов - Массив - ссылки на объекты, которые нужно распечатать;
//  ПараметрыПечати - Структура - дополнительные настройки печати;
//  КоллекцияПечатныхФорм - ТаблицаЗначений - сформированные табличные документы (выходной параметр)
//  ОбъектыПечати - СписокЗначений - значение - ссылка на объект;
//                                   представление - имя области, в которой был выведен объект (выходной параметр);
//  ПараметрыВывода - Структура - дополнительные параметры сформированных табличных документов (выходной параметр).
//
Процедура Печать(МассивОбъектов, ПараметрыПечати, КоллекцияПечатныхФорм, ОбъектыПечати, ПараметрыВывода) Экспорт
	//	
КонецПроцедуры

// Конец СтандартныеПодсистемы.Печать

#КонецОбласти

// <Описание процедуры>
//
// Параметры:
//  <Параметр1>  - <Тип.Вид> - <описание параметра>
//                 <продолжение описания параметра>
//  <Параметр2>  - <Тип.Вид> - <описание параметра>
//                 <продолжение описания параметра>
//
Процедура ЗаполнитьПоставляемыеДанные() Экспорт
	
	#Область ТабличныйДокументВДеревоЗначений
	
	ТабДокумент							= Справочники.ВидыНачислений.ПолучитьМакет("ПоставляемыеДанные");
	
	ИсточникДанных 						= Новый ОписаниеИсточникаДанных(ТабДокумент.Область(1, 1, ТабДокумент.ВысотаТаблицы, ТабДокумент.ШиринаТаблицы));
	ПостроительОтчета 					= Новый ПостроительОтчета;
    ПостроительОтчета.ИсточникДанных 	= ИсточникДанных;
    ПостроительОтчета.Выполнить();
	
	ТаблицаПериоды				= ПостроительОтчета.Результат.Выгрузить();	
	ВидыНачислений 				= ТаблицаПериоды.Скопировать();
	ВидыНачислений.Свернуть("Имя");
	
	#КонецОбласти
	
	#Область ОбработкаТаблицыЗначений
	
	Для Каждого СтрокаВидНачисления Из ВидыНачислений Цикл
		
		Попытка
			ВидНачисленийСсылка = Справочники.ВидыНачислений[СтрокаВидНачисления.Имя];
		Исключение
			ОбщегоНазначенияКлиентСервер.СообщитьПользователю(СтрШаблон("Не найден предопределенный вид начисления %1", СтрокаВидНачисления.Имя));
			Продолжить;
		КонецПопытки;
		
		СправочникОбъект 	= ВидНачисленийСсылка.ПолучитьОбъект();
		СправочникОбъект.УстанавливаютсяКоэффициенты = Истина;       
		
		СправочникОбъект.ДоступныеПериодыХраненияЗначений.Очистить();
		
		мСтроки 			= ТаблицаПериоды.НайтиСтроки(Новый Структура("Имя", СтрокаВидНачисления.Имя));
		
		Для Каждого СтрокаПериод Из мСтроки Цикл
			НовСтр 			= СправочникОбъект.ДоступныеПериодыХраненияЗначений.Добавить();
			Если ЗначениеЗаполнено(СтрокаПериод.Период) Тогда
				НовСтр.Период 	= Перечисления.ПериодыХраненияЗначений[СтрокаПериод.Период];
			КонецЕсли;	
		КонецЦикла;
		
		СправочникОбъект.Записать();
		
	КонецЦикла;	

	#КонецОбласти

КонецПроцедуры // ЗаполнитьПоставляемыеДанные()

#КонецОбласти

#КонецЕсли