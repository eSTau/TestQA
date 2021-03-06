#language: ru

@tree

Функционал: Добавление номенклатуры в цикле

Как Слушатель курса я хочу
добавить новые элементы справочника номенклатура в цике
чтобы выполнить 1 задание 5 модуля

Сценарий: Создание элементов справочника номенклатура
	И Я запоминаю значение выражения '1' в переменную "Шаг"
	И Я делаю 10 раз
		И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
		И Я запоминаю значение выражения '"Номенклатура" + $Шаг$' в переменную "Номенклатура"
		И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'ItemType' | 'Unit' | 'MainPricture' | 'Vendor' | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        |            |        |                | ''       | ''       | ''            | '$Номенклатура$' | ''                 | ''               | ''               |          |          |          |          |         |
		
