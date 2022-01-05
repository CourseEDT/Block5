Процедура ОбработкаПроведения(Отказ,Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	//Данный фрагмент построен конструктором.
	//При повторном использовании конструктора, внесенные вручную данные будут утеряны!

	// регистр ЦеныНоменклатуры
	Движения.ЦеныНоменклатуры.Записывать = Истина;
	Для Каждого ТекСтрокаТовары из Товары Цикл
		Движение = Движения.ЦеныНоменклатуры.Добавить();
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаТовары.Номенклатура;
		Движение.Цена = ТекСтрокаТовары.Цена;
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры

Процедура ОбработкаЗаполнения(ДанныеЗаполнения, СтандартнаяОбработка)
	
	Если ТипЗнч(ДанныеЗаполнения) = Тип("ДокументСсылка.Поступление") Тогда
		
		Дата = ДанныеЗаполнения.Дата;
		
		Для Каждого ТекСтрокаТовары Из ДанныеЗаполнения.Товары Цикл
			НоваяСтрока = Товары.Добавить();
			НоваяСтрока.Номенклатура = ТекСтрокаТовары.Номенклатура;
		КонецЦикла;
		
	КонецЕсли;
	
КонецПроцедуры
