﻿#language: ru

@tree

Функционал: Проверка расчета суммы документа "Заказ"

Как Участник курса я хочу
создать тест на проверку расчета суммы документа Заказ при изменении количества и цены	 
чтобы пройти практическое задание к Модулю 1

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Расчет суммы документа Заказ
* Подготовка
	И я закрываю все окна клиентского приложения

* Создание документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Пантера АО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
* Заполнение таблицы документа
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000030' | 'Колбаса'      |
	И в таблице "Список" я выбираю текущую строку
	
* Изменение цены в строке
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '100,00'
	И в таблице "Товары" я завершаю редактирование строки

* Проверка расчета суммы при изменении цены
	И элемент формы 'Сумма (итог)' стал равен '100'

* Изменение количества в строке
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки

* Проверка расчета суммы при изменении цены
	И элемент формы 'Сумма (итог)' стал равен '200'
		
* Закрытие документа
	Когда открылось окно 'Заказ (создание) *'
	И Я закрываю окно 'Заказ (создание) *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'


