
#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ПрограммныйИнтерфейс

#Область ДляВызоваИзДругихПодсистем

// СтандартныеПодсистемы.УправлениеДоступом

// См. УправлениеДоступом.ЗаполнитьНаборыЗначенийДоступа.
Процедура ЗаполнитьНаборыЗначенийДоступа(Таблица) Экспорт
	
	Бюджетирование.ЗаполнитьНаборыЗначенийДоступа(ЭтотОбъект, Таблица);
	
КонецПроцедуры

#КонецОбласти

#КонецОбласти
	
#Область ОбработчикиСобытий

Процедура ПередЗаписью(Отказ, РежимЗаписи, РежимПроведения)
	// Вставить содержимое обработчика.
КонецПроцедуры 

Процедура ПриКопировании(ОбъектКопирования)
	// Вставить содержимое обработчика.
КонецПроцедуры

Процедура ОбработкаПроверкиЗаполнения(Отказ, ПроверяемыеРеквизиты)
	// Вставить содержимое обработчика.
КонецПроцедуры

Процедура ОбработкаПроведения(Отказ, РежимПроведения)
	
	// регистр СтавкиПремий
	Движения.СтавкиПремий.Записывать 	= Истина;
	Движение 							= Движения.СтавкиПремий.Добавить();
	Движение.Период 					= Дата;
	Движение.Сценарий 					= Сценарий;
	Движение.ВидНачисления 				= ВидНачисления;
	Движение.КодГрейда 					= КодГрейда;
	Движение.Ставка 					= Ставка;
	
КонецПроцедуры

Процедура ОбработкаУдаленияПроведения(Отказ)
	// Вставить содержимое обработчика.
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

////////////////////////////////////////////////////////////////////////////////
// Вспомогательные процедуры и функции.





#КонецОбласти

#Иначе
ВызватьИсключение НСтр("ru = 'Недопустимый вызов объекта на клиенте.'");
#КонецЕсли
