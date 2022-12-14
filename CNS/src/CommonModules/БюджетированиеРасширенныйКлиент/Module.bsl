
Процедура КлючевыеРеквизитыЗаполненияФормыОчиститьТаблицы(Форма) Экспорт
	
	МассивИменТаблиц = Форма.КлючевыеРеквизитыЗаполненияФормыТаблицыОчищаемыеПриИзменении();
	
	Для каждого ИмяТаблицы Из МассивИменТаблиц Цикл
		Таблица  = ОбщегоНазначенияКлиентСервер.ПолучитьРеквизитФормыПоПути(Форма, ИмяТаблицы);
		Таблица.Очистить();
	КонецЦикла; 
	
	БюджетированиеРасширенныйКлиентСервер.КлючевыеРеквизитыЗаполненияФормыУстановитьОтображениеПредупреждения(Форма, ОтображениеПредупрежденияПриРедактировании.НеОтображать);

КонецПроцедуры 

Функция ПериодОжиданияЗапускаАвтоматическогоРасчета() Экспорт 
	
	ПериодОжидания = 0;
	
	Если ОбщегоНазначенияКлиентСервер.ЭтоВебКлиент() Тогда
		ПериодОжидания = 1;
	Иначе
		ПериодОжидания = 0.1;
	КонецЕсли;
	
	Возврат ПериодОжидания;
	
КонецФункции 

Функция ПараметрыДляВыбораПоляСВладельцемОрганизация() Экспорт
	
	ПараметрыДляВыбора = Новый Структура(
		"Форма, 
		|ОписаниеДокумента,
		|ОписаниеТаблицы");
		
	Возврат ПараметрыДляВыбора;
	
КонецФункции
