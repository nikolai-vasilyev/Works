# Знакомство с MarkDown


**Markdown** - язык разметки, созданный с целью обозначения форматирования в простом тексте и сохранением максимальной читаемости текста. *Текстовые файлы, описанные в формате markdown имеют расширение файла .md*

Благодаря использованию [специализированных символов](#symbols), файл формата markdown может быть интерпретирован онлайн-сервисами, такими как GitHub, в файл, обладающий специальным графическим представлением текста.

<img src = "img/img15.png" width = 100%>
  
#
 
### <a name="symbols"></a> Специальные символы .md

Для обозначения заголовков в markdown используется символ **#**:

<img src = "img/img16.png" width = 100%>
  
*Для того чтобы обозначить заголовок между # и текстом обязательно должен быть пробельный символ*
  
#
 
Markdown поддерживает и **стандартные способы выделения текста**:

<img src = "img/img17.png" width = 100%>
  
*Для переноса текста на следующую строку, используется сочетание двух пробелов в конце строки*
  
#
 
Существует также возможность использования **списков**:

<img src = "img/img18.png" width = 100%>
  
*Вложенный список создается при помощи четырех символов пробела или табуляции*
  
#
 
Описание кода возможно и без использования нумерованного списка, с помощью набора символов **```название языка**:

<img src = "img/img19.png" width = 100%>
  
*Использование символа ``` без указания языка позволит выделить блок без выделения цветом*
  
#
 
Для отображения в файле формата .md изображений используется синтаксис, схожий с описанием внешней ссылки  **![альтернативный текст](ссылка на изображение)**:

<img src = "img/img20.png" width = 100%>
  
#
 
Важно, что путь до файла с кодом или изображением в вашем репозитории может быть указан через абсолютную или относительную ссылку. То есть для указания абсолютной ссылки на файл, опубликованный в сети, необходимо указывать ссылку в виде **"https://адрес_файла"**, а для указания относительного пути к файлу, находящемуся строго в текущем репозитории, в виде **"ДИРЕКТОРИЯ/ФАЙЛ.РАСШИРЕНИЕ"**.

#

### Таблицы

Используйте символы | и - для создания таблицы с заголовком.

Пример:

| Заголовок 1 | Заголовок 2 |
| ----------- | ----------- |
| Строка 1    | Строка 2    |

Выравнивание в таблицах
Используйте двоеточие для выравнивания текста в ячейках.

Пример:

| Лево         | По центру    | Право        |
|:-------------|:------------:|-------------:|
| выравнивание | выравнивание | выравнивание |

#

### Чекбоксы

Чтобы сделать чекбоксы, нужно использовать маркированный список, но между маркером и текстом поставить [x] для отмеченного пункта и [] — для неотмеченного:

- [ ] Невыполненная задача
- [x] Выполненная задача
