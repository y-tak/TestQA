﻿#language: ru

@tree

Функционал: Проверка добавления картинок

Как Менеджер я хочу
добавить картинки к номенклатуре 
чтобы можно было посмотреть  


Сценарий: подготовительный
когда экспорт настроек картинок
когда экспорт основных данных
И Я устанавливаю в данную базу расширение "IRP_TestExtension" из каталога исходников "$КаталогПроекта$"


Сценарий: тестирование картинок и html поля
//И В командном интерфейсе я выбираю 'Справочники' 'Номенклатура'
//Тогда открылось окно 'Номенклатура'
//И в таблице "List" я активизирую поле с именем "ItemType"
//И в таблице "List" я перехожу к строке:
//	| 'Вид номенклатуры'          | 'Код' | 'Наименование'            | 'Ссылка'                  |
//	| 'Товар (без характеристик)' | '2'   | 'Товар без характеристик' | 'Товар без характеристик' |
//И в таблице "List" я активизирую поле с именем "Description"
//И в таблице "List" я выбираю текущую строку
//И я выбираю файл 'C:\Users\ezarembo\Documents\TestAutomation\source\itempicture1.png'
//Тогда открылось окно '1С:Предприятие'
//И я нажимаю на кнопку с именем 'OK'
//Тогда открылось окно 'Товар без характеристик (Номенклатура)'
//И в поле с именем 'Description_ru' я ввожу текст 'товар'
//И я нажимаю на кнопку с именем 'FormWriteAndClose'
//И я жду закрытия окна 'Товар без характеристик (Номенклатура) *' в течение 20 секунд
Дано Я открываю навигационную ссылку "e1cib/data/Catalog.Items?ref=b762b13668d0905011eb76684b9f687d"
И я выбираю файл "$КаталогПроекта$\Files\itempicture1.png"
И я делаю клик по элементу клиента тестирования '+' 'Тип' UI Automation
И я нажимаю на кнопку с именем 'update_slider'
Тогда элемент формы с именем "PictureViewHTML" стал равен 
	|'<!DOCTYPE html>'|
	|'<html lang=\"en\">'|
	|'<head>'|
	|'  <meta charset=\"UTF-8\">'|
	|'  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">'|
	|'  <meta http-equiv=\"X-UA-Compatible\">'|
	|'  <title>Slider</title>'|
	|'  <style>'|
	|'  * {box-sizing:border-box; padding: 0; margin: 0; user-select: none;}'|
	|''|
	|'body.fill-color{'|
	|'  background-color: rgba(228, 228, 228, 0.6);'|
	|'}'|
	|''|
	|'/* Slideshow container */'|
	|'.slideshow-container {'|
	|'  position: relative;'|
	|'  max-width: 1300px;'|
	|'  height: 100vh;'|
	|'  margin: auto;'|
	|'  display: flex;'|
	|'}'|
	|''|
	|'.toolbar{'|
	|'  width: max-content;'|
	|'  height: auto;'|
	|'  background-color: #f2f2f2;'|
	|'  background-image: radial-gradient(circle, #f2f2f2, #ececec, #e7e7e7, #e1e1e1, #dcdcdc);'|
	|'  display: flex;'|
	|'  flex-direction: column;'|
	|'  align-items: center;'|
	|'  justify-content: center;'|
	|'  margin-left: 2px;'|
	|'  box-shadow: -1px -2px 2px 0 rgba(0, 0, 0, 0.08);'|
	|'}'|
	|''|
	|'.toolbar .btn{'|
	|'  text-align: center;'|
	|'  color: #000;'|
	|'  font-size: 1.1rem;'|
	|'  width: 48px;'|
	|'  height: 48px;'|
	|'  margin: 2px;'|
	|'  display: flex;'|
	|'  flex-direction: column;'|
	|'  align-items: center;'|
	|'  justify-content: center;'|
	|'  cursor: pointer;'|
	|'}'|
	|''|
	|'.toolbar img{'|
	|'  width: 24px;'|
	|'  height: 24px;'|
	|'}'|
	|''|
	|'.toolbar .btn:hover{'|
	|'  background-color: #ccc;'|
	|'}'|
	|''|
	|'.toolbar .btn.changeBgColor.fill-color{'|
	|'  background-color: #ccc;'|
	|'}'|
	|''|
	|'.thumbnails{'|
	|'  width: 15%;'|
	|'  height: auto;'|
	|'  overflow-y: auto;'|
	|'  scrollbar-width: thin;'|
	|'  margin-right: 2px;'|
	|'  background-color: #fff;'|
	|'}'|
	|''|
	|'.thumbnail{'|
	|'  margin: 4px 1px;'|
	|'  padding: 1px;'|
	|'  border: 2px solid transparent;'|
	|'  cursor: pointer;'|
	|'}'|
	|''|
	|'.thumbnail img{'|
	|'  max-width: 100%;'|
	|'  height: auto;'|
	|'  display: block;'|
	|'}'|
	|''|
	|'.thumbnails .thumbnail:first-child{'|
	|'  margin-top: 0;'|
	|'}'|
	|''|
	|'.thumbnails .thumbnail:last-child{'|
	|'  margin-bottom: 0;'|
	|'}'|
	|''|
	|'.thumbnail.active{'|
	|'  border: 2px solid rgba(0, 0, 0, 0.75);'|
	|'}'|
	|''|
	|'.thumbnails-btns{'|
	|'  display: none;'|
	|'}'|
	|''|
	|'.thumbnails.zoom-img{'|
	|'  width: 0;'|
	|'  margin-right: 0;'|
	|'}'|
	|''|
	|'.up, .down{'|
	|'  position: absolute;'|
	|'  left: 6%;'|
	|'  transform: rotate(90deg);'|
	|'  color: #fff;'|
	|'  cursor: pointer;'|
	|'  user-select: none;'|
	|'  width: 25px;'|
	|'  height: 25px;'|
	|'  text-align: center;'|
	|'  background-color: rgba(0, 0, 0, 0.4);'|
	|'  border-radius: 50%;'|
	|'}'|
	|''|
	|'.up span,'|
	|'.down span{'|
	|'  position: relative;'|
	|'  top: 1px;'|
	|'}'|
	|''|
	|'.up{'|
	|'  top: 2px;'|
	|'}'|
	|''|
	|'.down{'|
	|'  bottom: 2px;'|
	|'}'|
	|''|
	|'.up:hover, .down:hover{'|
	|'  color: rgb(0, 0, 0);'|
	|'}'|
	|''|
	|'.slides{'|
	|'  width: 100%;'|
	|'  position: relative;'|
	|'}'|
	|''|
	|'.slides.fill-color{'|
	|'  background-color: rgba(228, 228, 228, 0.6);'|
	|'}'|
	|''|
	|'.slides.zoom-img{'|
	|'  width: 100%;'|
	|'}'|
	|''|
	|'/* Hide the images by default */'|
	|'.mySlides {'|
	|'  display: none;'|
	|'  text-align: center;'|
	|'  height: 100%;'|
	|'}'|
	|''|
	|'.slideText{'|
	|'  margin: 0;'|
	|'  background-color: rgba(255,255,255,0.5);'|
	|'  height: 100%;'|
	|'  position: relative;'|
	|'  z-index: 99;'|
	|''|
	|'  display: none;'|
	|'}'|
	|''|
	|'.slideText.displayText{'|
	|'  display: block;'|
	|'}'|
	|''|
	|'.slideText span{'|
	|'  text-align: left;'|
	|'  left: 60px;'|
	|'  right: 60px;'|
	|'  top: 50%;'|
	|'  z-index: 99999999;'|
	|'  position: absolute;'|
	|'  transform: translate(0, -50%);'|
	|'}'|
	|''|
	|'.addPicture {'|
	|'  text-align: center;'|
	|'  height: 100%;'|
	|'}'|
	|''|
	|'.mySlides.active{'|
	|'  display: block;'|
	|'}'|
	|''|
	|'.slideshow-container .mySlides img{'|
	|'  max-height: 100%;'|
	|'  max-width: 100%;'|
	|'  width: auto;'|
	|'  height: auto;'|
	|'  position: absolute;'|
	|'  top: 0;'|
	|'  bottom: 0;'|
	|'  left: 0;'|
	|'  right: 0;'|
	|'  margin: auto;'|
	|'  z-index: 1;'|
	|'  cursor: pointer;'|
	|'}'|
	|''|
	|'.slideshow-container .addPicture span{'|
	|'  padding: 10px 20px;'|
	|'  font-size: 2rem;'|
	|'  font-weight: bold;'|
	|'  border-radius: 50%;'|
	|'  background-color: #eee;'|
	|'  position: absolute;'|
	|'  top: 50%;'|
	|'  left: 40%;'|
	|'  transform: translate(-50%, -50%);'|
	|'  cursor: pointer;'|
	|'}'|
	|''|
	|'/* Next & previous buttons */'|
	|'.prev, .next {'|
	|'  cursor: pointer;'|
	|'  z-index: 999;'|
	|'  position: absolute;'|
	|'  top: 0;'|
	|'  bottom: 0;'|
	|'  width: 50px;'|
	|'  height: auto;'|
	|'  margin-top: -22px;'|
	|'  color: #fff;'|
	|'  font-weight: bold;'|
	|'  font-size: 22px;'|
	|'  user-select: none;'|
	|'  background-color: rgba(0, 0, 0, 0.1);'|
	|'  transition: background-color 0.3s ease;'|
	|'}'|
	|''|
	|'.btn-transparent{'|
	|'  background-color: transparent;'|
	|'}'|
	|''|
	|'/* Position the \"next button\" to the right */'|
	|'.next {'|
	|'  right: 0;'|
	|'}'|
	|''|
	|'.prev{'|
	|'  left: 0;'|
	|'}'|
	|''|
	|'.prev.zoom-img, .next.zoom-img{'|
	|'  display: none;'|
	|'}'|
	|''|
	|'/* On hover, add a black background color with a little bit see-through */'|
	|'.prev:hover, .next:hover {'|
	|'  background-color: rgba(0, 0, 0, 0.2);'|
	|'}'|
	|''|
	|'.prev span,'|
	|'.next span{'|
	|'  position: absolute;'|
	|'  top: 50%;'|
	|'  left: 50%;'|
	|'  transform: translate(-50%,-50%);'|
	|'}'|
	|''|
	|'/* Fading animation */'|
	|'.fade {'|
	|'  -webkit-animation-name: fade;'|
	|'  -webkit-animation-duration: 1.5s;'|
	|'  animation-name: fade;'|
	|'  animation-duration: 1.5s;'|
	|'}'|
	|''|
	|'@-webkit-keyframes fade {'|
	|'  from {opacity: .4}'|
	|'  to {opacity: 1}'|
	|'}'|
	|''|
	|'@keyframes fade {'|
	|'  from {opacity: .4}'|
	|'  to {opacity: 1}'|
	|'}'|
	|'  </style>'|
	|'</head>'|
	|'<body>'|
	|'  <div class=\"slideshow-container\">'|
	|'    <div class=\"thumbnails\">'|
	|'    </div>'|
	|''|
	|'    <div class=\"slides\">'|
	|'    </div>'|
	|'    <div class=\"toolbar\">'|
	|'      <div class=\"btn updateSlider\">'|
	|'        <svg x=\"0px\" y=\"0px\"'|
	|'          width=\"32\" height=\"32\"'|
	|'          viewBox=\"0 0 24 24\"'|
	|'          style=\" fill:#333333;\">'|
	|'          <path d=\"M 12 3 C 9.263544 3 6.8151574 4.2316704 5.1660156 6.1660156 L 3 4 L 3 10 L 9 10 L 6.5917969 7.5917969 C 7.8747922 6.0167955 9.8149031 5 12 5 C 15.859 5 19 8.14 19 12 L 21 12 C 21 7.038 16.963 3 12 3 z M 3 12 C 3 16.963 7.037 21 12 21 C 14.736456 21 17.184843 19.76833 18.833984 17.833984 L 21 20 L 21 14 L 15 14 L 17.408203 16.408203 C 16.125208 17.983204 14.185097 19 12 19 C 8.141 19 5 15.859 5 12 L 3 12 z\"></path>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn addImage\">'|
	|'        <svg x=\"0px\" y=\"0px\"'|
	|'          width=\"24\" height=\"24\"'|
	|'          viewBox=\"0 0 172 172\"'|
	|'          style=\" fill:#000000;\">'|
	|'          <g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M78.83333,21.5v57.33333h-57.33333v14.33333h57.33333v57.33333h14.33333v-57.33333h57.33333v-14.33333h-57.33333v-57.33333z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn removeImage\">'|
	|'        <svg xmlns=\"http://www.w3.org/2000/svg\" x=\"0px\" y=\"0px\"'|
	|'          width=\"24\" height=\"24\"'|
	|'          viewBox=\"0 0 172 172\"'|
	|'          style=\" fill:#000000;\">'|
	|'          <g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M71.66667,14.33333l-7.16667,7.16667h-35.83333v14.33333h114.66667v-14.33333h-35.83333l-7.16667,-7.16667zM35.83333,50.16667v93.16667c0,7.88333 6.45,14.33333 14.33333,14.33333h71.66667c7.88333,0 14.33333,-6.45 14.33333,-14.33333v-93.16667zM57.33333,64.5h14.33333v78.83333h-14.33333zM100.33333,64.5h14.33333v78.83333h-14.33333z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn addImagesFromGallery\">'|
	|'        <svg x=\"0px\" y=\"0px\"'|
	|'          width=\"24\" height=\"24\"'|
	|'          viewBox=\"0 0 172 172\"'|
	|'          style=\" fill:#000000;\">'|
	|'          <g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M21.5,21.5c-7.90483,0 -14.33333,6.4285 -14.33333,14.33333v71.66667c0,7.90483 6.4285,14.33333 14.33333,14.33333h93.16667c7.90483,0 14.33333,-6.4285 14.33333,-14.33333v-71.66667c0,-7.90483 -6.4285,-14.33333 -14.33333,-14.33333zM143.33333,50.16667v86h-107.5v14.33333h107.5c7.83362,0 14.33333,-6.49972 14.33333,-14.33333v-86zM87.03581,64.41602l31.7041,43.08398h-101.31315l25.11133,-32.01205l18.74251,22.56381z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn moveImageUp\">'|
	|'        <svg x=\"0px\" y=\"0px\"'|
	|'          width=\"24\" height=\"24\"'|
	|'          viewBox=\"0 0 172 172\"'|
	|'          style=\" fill:#000000;\"><g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M86,20.99609l-50.67057,50.67057l10.75,10.75l32.75391,-32.75391v100.83724h14.33333v-100.83724l32.7539,32.75391l10.75,-10.75z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn moveImageDown\">'|
	|'        <svg xmlns=\"http://www.w3.org/2000/svg\" x=\"0px\" y=\"0px\"'|
	|'          width=\"24\" height=\"24\"'|
	|'          viewBox=\"0 0 172 172\"'|
	|'          style=\" fill:#000000;\"><g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g id=\"original-icon\" fill=\"#333333\"><path d=\"M78.83333,21.5v100.83724l-32.75391,-32.7539l-10.75,10.75l50.67057,50.67057l50.67057,-50.67057l-10.75,-10.75l-32.7539,32.7539v-100.83724z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn showText\">'|
	|'        <svg xmlns=\"http://www.w3.org/2000/svg\" x=\"0px\" y=\"0px\"'|
	|'          width=\"24\" height=\"24\"'|
	|'          viewBox=\"0 0 172 172\"'|
	|'          style=\" fill:#000000;\"><g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M28.66667,21.5v28.66667h14.33333v-14.33333h35.83333v100.33333h-14.33333v14.33333h43v-14.33333h-14.33333v-100.33333h35.83333v14.33333h14.33333v-28.66667z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn zoomImage\">'|
	|'        <svg x=\"0px\" y=\"0px\"'|
	|'          width=\"24\" height=\"24\"'|
	|'          viewBox=\"0 0 172 172\"'|
	|'          style=\" fill:#000000;\"><g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M64.5,14.33333c-27.6214,0 -50.16667,22.54527 -50.16667,50.16667c0,27.6214 22.54527,50.16667 50.16667,50.16667c12.52732,0 23.97256,-4.67249 32.7819,-12.31771l3.05143,3.05143v9.26628l43,43l14.33333,-14.33333l-43,-43h-9.26628l-3.05143,-3.05143c7.64521,-8.80934 12.31771,-20.25458 12.31771,-32.7819c0,-27.6214 -22.54527,-50.16667 -50.16667,-50.16667zM64.5,28.66667c19.87509,0 35.83333,15.95824 35.83333,35.83333c0,19.87509 -15.95825,35.83333 -35.83333,35.83333c-19.87509,0 -35.83333,-15.95825 -35.83333,-35.83333c0,-19.87509 15.95824,-35.83333 35.83333,-35.83333zM57.33333,43v14.33333h-14.33333v14.33333h14.33333v14.33333h14.33333v-14.33333h14.33333v-14.33333h-14.33333v-14.33333z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn changeBgColor\">'|
	|'        <svg xmlns=\"http://www.w3.org/2000/svg\" x=\"0px\" y=\"0px\"'|
	|'          width=\"24\" height=\"24\"'|
	|'          viewBox=\"0 0 172 172\"'|
	|'          style=\" fill:#000000;\"><g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M58.81706,14.27734l-10.13411,10.13411l19.94629,19.94629l-41.4043,40.11653l-0.04199,0.042c-8.26713,8.26713 -8.26713,21.93925 0,30.20637l36.5472,36.5472c8.26714,8.26713 21.58008,8.62629 29.49251,0.71386l36.54721,-36.5472c8.26713,-8.26714 8.26713,-21.93924 0,-30.20638l-14.33333,-14.33333zM78.74935,54.49186l26.55306,26.53907l14.33333,14.33333c1.59977,1.59976 2.39356,3.28442 2.39356,4.96907h-86.93783c-0.25887,-1.92147 0.39909,-3.85644 2.22559,-5.68294zM143.33333,114.66667c0,0 -14.33333,20.78333 -14.33333,28.66667c0,7.88333 6.45,14.33333 14.33333,14.33333c7.88333,0 14.33333,-6.45 14.33333,-14.33333c0,-7.88333 -14.33333,-28.66667 -14.33333,-28.66667z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'    </div>'|
	|'  </div>'|
	|'  </div>'|
	|'  <script>'|
	|'let slideIndex = 0;'|
	|'let interval = false;'|
	|'var call1C = null;'|
	|''|
	|'const slidesDiv = document.querySelector(\'.slides\');'|
	|'const thumbnailsDiv = document.querySelector(\'.thumbnails\');'|
	|''|
	|''|
	|'window.onload = () => {'|
	|'    document.querySelector(\'.thumbnails\').scrollTop = 0;'|
	|'}'|
	|''|
	|'window.onresize = () => {'|
	|'  fullThumbnailDisplay(document.querySelectorAll(\".thumbnail\")[slideIndex])'|
	|'}'|
	|''|
	|'function zoomImage(e){'|
	|'  if(e.target.nodeName !== \'IMG\') return'|
	|'  document.querySelectorAll(\'.thumbnails, .slides, .prev, .next\').forEach(node => node.classList.toggle(\'zoom-img\'))'|
	|'}'|
	|''|
	|'function send_to_1C(name, data){ '|
	|'	call1C = data;'|
	|'	call1CEvent.click();'|
	|'	'|
	|'	//var event = new MouseEvent(\'click\', {'|
	|'    //	\'view\': window,'|
	|'   	//	\'bubbles\': true,'|
	|'    //	\'cancelable\': true'|
	|'  	//	});'|
	|'    //event.propertyName = name;'|
	|'    //event.data = data; '|
	|'    //document.dispatchEvent(event);'|
	|'}'|
	|''|
	|'function getCurrentSlideId(){'|
	|'  return document.querySelector(\'.mySlides.active\') ? document.querySelector(\'.mySlides.active\').getAttribute(\'data-id\') : false;'|
	|'}'|
	|''|
	|'// Next/previous controls'|
	|'function plusSlides(n) {'|
	|'  showSlides(slideIndex += n);'|
	|'}'|
	|''|
	|'// Thumbnail image controls'|
	|'function currentSlide(thumbnail) {'|
	|'  const pictureId = thumbnail.getAttribute(\'data-id\')'|
	|'  let indexOfSlide = 0;'|
	|'  document.querySelectorAll(\'.mySlides\').forEach((slide, index) => {'|
	|'    if(slide.getAttribute(\'data-id\') === pictureId){'|
	|'      indexOfSlide = index;'|
	|'      return;'|
	|'    }'|
	|'  })'|
	|'  showSlides(slideIndex = indexOfSlide);'|
	|'}'|
	|''|
	|'function fullThumbnailDisplay(thumbnail){'|
	|'  if(typeof(thumbnail) === \'undefined\') return;'|
	|'  let getThumbnailBounding = thumbnail.getBoundingClientRect();'|
	|'  let thumbnailsDiv = document.querySelector(\'.thumbnails\');'|
	|'  let scrollTop = 0;'|
	|''|
	|'  if(getThumbnailBounding.y > 0 && (thumbnail.offsetTop + thumbnail.offsetHeight) > (thumbnailsDiv.clientHeight + thumbnailsDiv.scrollTop)){'|
	|'    scrollTop = thumbnail.offsetTop + thumbnail.offsetHeight - thumbnailsDiv.clientHeight;'|
	|'    thumbnailsDiv.scrollTop = scrollTop;'|
	|'    return;'|
	|'  }'|
	|''|
	|'  if(getThumbnailBounding.y < 0){'|
	|'    scrollTop = thumbnailsDiv.scrollTop + getThumbnailBounding.y;'|
	|'    thumbnailsDiv.scrollTop = scrollTop;'|
	|'    return;'|
	|'  }'|
	|'}'|
	|''|
	|'function showSlides(n) {'|
	|'  const slides = document.querySelectorAll(\".mySlides\");'|
	|'  if(slides.length === 0){'|
	|'    fillEmptySlider();'|
	|'    return;'|
	|'  }'|
	|'  const thumbnails = document.querySelectorAll(\".thumbnail\");'|
	|'  if (n >= slides.length) {slideIndex = 0}'|
	|'  if (n < 0) {slideIndex = slides.length-1}'|
	|'  slides.forEach(slide => slide.className = slide.className.replace(\" active\", \"\"));'|
	|'  thumbnails.forEach(thumbnail => thumbnail.className = thumbnail.className.replace(\" active\", \"\"));'|
	|'  slides[slideIndex].className += \" active\";'|
	|'  thumbnails[slideIndex].className += \" active\";'|
	|'  fullThumbnailDisplay(thumbnails[slideIndex]);'|
	|'}'|
	|''|
	|'function addImagesToSlider(mainDiv, divClass, id, src, listener, text){'|
	|'  const div = document.createElement(\'div\');'|
	|'  div.className = divClass;'|
	|'  div.setAttribute(\'data-id\', id);'|
	|''|
	|'  div.innerHTML = ` <img src=\'data:image/gif;base64,R0lGODlhZABkAPf/ANPT0zMzM5ubm7GxsXR0dJeXl1paWuHh4dvb2319fYaGhmhoaFBQUGRkZEFBQaelpSAgIFRUVBQUFK+vr2FhYZOTk5WVlUtNTbe3t5+fn7q6ur29vb+/v4+PjwoKCqKiolxcXC0tLZGRkayrq42NjUZHR4mJiYuLiyMjIzs7O4ODg15eXgMDAxwcHCkpKW9tbZmZmc7OzsfHx8zMzMjIyMvLy/7+/v///8XFxcbGxsrKyvLy8ujo6PPz88TExMnJye/v78PDw/39/dDQ0Pz8/Pv7+8LCwvn5+e7u7vj4+GdnZ9LS0vr6+t3d3fb29vf39/X19ebm5tXV1fHx8dHR0fDw8Nra2tfX19nZ2d7e3sXGxuXl5fT09Ofn5+3t7eDg4OPj4+zs7O/v7+np6eTk5NbW1tjY2N/f38fIyOvr68LDw+rq6vPx8cHBwcPExM/NzczNzcTFxcbHx/r4+PLw8Pb09M7MzM3OzsjJyf79/evq6s/Pz+/u7vTy8srIyMnHx/v5+f38/MvJyeHg4PXz88zKyvHv79nY2MnKyvDv7+fm5srLy9PR0dva2vz6+v/+/uzr6+jn58fFxfj29tLQ0Nzc3MjGxvz7+9fW1urp6eLi4sXDw8bExObl5dTU1NfY2Pf19c3Ly+7t7c/Q0MPBwdTS0tHPz97d3dbV1eTj4/n398vMzO3s7NjX18HCwuDf3+no6MTCwuXk5NDOzvDx8d3e3o6Pj09PT+nr6/T19eLk5Ojq6oyMjOXn5+bo6MDBwe/w8N/e3pCQkIqKimNjY1dXV1JSUtrZ2cDAwJSVlSwsLGdoaJyampaXl4iIiJKTk5SUlFtbW2VlZbi4uJycnKChoSsrK9rb25iYmE5OTpqbm76+vhAQEEtLS6mpqV1dXV9fX9bX1+Dh4c7Pz1pcXLm5uXFxcby9vby8vBkZGXl5eTExMbS0tGlnZ7CxsZaWlrGxse7v74CAgL6/v66urq2trZKSktDR0Y6OjkpKSqqqqjAwMGZmZpqams3Nzf///yH/C05FVFNDQVBFMi4wAwEAAAAh/wtYTVAgRGF0YVhNUDw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkJGNDY5OUNEMzkwQzExRUE4RTY0ODQ0ODI2QUFGMkNDIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkJGNDY5OUNFMzkwQzExRUE4RTY0ODQ0ODI2QUFGMkNDIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QkY0Njk5Q0IzOTBDMTFFQThFNjQ4NDQ4MjZBQUYyQ0MiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QkY0Njk5Q0MzOTBDMTFFQThFNjQ4NDQ4MjZBQUYyQ0MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4B//79/Pv6+fj39vX08/Lx8O/u7ezr6uno5+bl5OPi4eDf3t3c29rZ2NfW1dTT0tHQz87NzMvKycjHxsXEw8LBwL++vby7urm4t7a1tLOysbCvrq2sq6qpqKempaSjoqGgn56dnJuamZiXlpWUk5KRkI+OjYyLiomIh4aFhIOCgYB/fn18e3p5eHd2dXRzcnFwb25tbGtqaWhnZmVkY2JhYF9eXVxbWllYV1ZVVFNSUVBPTk1MS0pJSEdGRURDQkFAPz49PDs6OTg3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\'>'|
	|'  ${text !== undefined ? \'<div class=\"slideText\"><span>\'+text+\'</span></div>\' : \'\'}`'|
	|'  mainDiv.appendChild(div);'|
	|''|
	|'  var image = div.querySelector(\'img\');'|
	|'  var downloadingImage = new Image();'|
	|'  downloadingImage.onload = function(){'|
	|'      image.src = this.src;   '|
	|'  };'|
	|'  downloadingImage.onerror = function(){'|
	|'    image.src = `data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAYAAACOEfKtAAABN2lDQ1BBZG9iZSBSR0IgKDE5OTgpAAAokZWPv0rDUBSHvxtFxaFWCOLgcCdRUGzVwYxJW4ogWKtDkq1JQ5ViEm6uf/oQjm4dXNx9AidHwUHxCXwDxamDQ4QMBYvf9J3fORzOAaNi152GUYbzWKt205Gu58vZF2aYAoBOmKV2q3UAECdxxBjf7wiA10277jTG+38yH6ZKAyNguxtlIYgK0L/SqQYxBMygn2oQD4CpTto1EE9AqZf7G1AKcv8ASsr1fBBfgNlzPR+MOcAMcl8BTB1da4Bakg7UWe9Uy6plWdLuJkEkjweZjs4zuR+HiUoT1dFRF8jvA2AxH2w3HblWtay99X/+PRHX82Vun0cIQCw9F1lBeKEuf1UYO5PrYsdwGQ7vYXpUZLs3cLcBC7dFtlqF8hY8Dn8AwMZP/fNTP8gAAAAJcEhZcwAAC4kAAAuJATfJy60AAATtaVRYdFhNTDpjb20uYWRvYmUueG1wAAAAAAA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzE0NSA3OS4xNjM0OTksIDIwMTgvMDgvMTMtMTY6NDA6MjIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdEV2dD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlRXZlbnQjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE5IChXaW5kb3dzKSIgeG1wOkNyZWF0ZURhdGU9IjIwMjAtMDEtMTdUMTE6MzgrMDI6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDIwLTAxLTE3VDExOjM4OjI5KzAyOjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDIwLTAxLTE3VDExOjM4OjI5KzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIgcGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpmMzVlODZkYS03MDAzLTI0NDgtODk1OS1hZjI3MDlkMDQzMDQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6ZjM1ZTg2ZGEtNzAwMy0yNDQ4LTg5NTktYWYyNzA5ZDA0MzA0IiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6ZjM1ZTg2ZGEtNzAwMy0yNDQ4LTg5NTktYWYyNzA5ZDA0MzA0Ij4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDpmMzVlODZkYS03MDAzLTI0NDgtODk1OS1hZjI3MDlkMDQzMDQiIHN0RXZ0OndoZW49IjIwMjAtMDEtMTdUMTE6MzgrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE5IChXaW5kb3dzKSIvPiA8L3JkZjpTZXE+IDwveG1wTU06SGlzdG9yeT4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz69VyBVAAAc+ElEQVR4nO19e5RcR3nn7/uq7r39mJ4ZzWhkSSMJSza2MMj4JcvgB4THsgmPEO8mfsMJTsiyJxuSJQTskA0JXgcCSxaSeMnZteGAvTYL5ixPAw4EGwxYNrbBNn5h2fJL1kiaZ0/3fVTVt3/U7Z6e6ds9M5Ls/LPfOffMOX3rVn31u1Xfu+6QiOD/0+GTBgAQraw1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`'|
	|'  };'|
	|'  downloadingImage.src = src;'|
	|''|
	|'  if(listener !== undefined){'|
	|'    div.addEventListener(\'click\', listener);'|
	|'  }'|
	|'}'|
	|''|
	|'function fillEmptySlider(){'|
	|'  slidesDiv.innerHTML = \'\';'|
	|'  const addPictureBtn = document.createElement(\'div\');'|
	|'  addPictureBtn.className = \'addPicture\';'|
	|'  addPictureBtn.innerHTML = `<span>&#43;</span>`'|
	|'  slidesDiv.appendChild(addPictureBtn);'|
	|''|
	|'  addPictureBtn.addEventListener(\'click\', () => {'|
	|'    send_to_1C(\'call1C\', \'{\"value\":\"add_picture\"}\')'|
	|'  })'|
	|'}'|
	|''|
	|'function fillSlider(jsonData){'|
	|'  const json = JSON.parse(jsonData);'|
	|'  const slides = json.Pictures;'|
	|''|
	|'  if(slides.length > 0) {'|
	|'    slidesDiv.innerHTML = `'|
	|'      <a class=\"prev\" onclick=\"plusSlides(-1)\"><span>&#10094;</span></a>'|
	|'      <a class=\"next\" onclick=\"plusSlides(1)\"><span>&#10095;</span></a>`;'|
	|'    thumbnailsDiv.innerHTML = \'\';'|
	|'    slides.forEach(slide => {'|
	|'      addImagesToSlider(thumbnailsDiv, \'thumbnail\', slide.ID, slide.Preview, function(){currentSlide(this)});'|
	|'      addImagesToSlider(slidesDiv, \'mySlides\', slide.ID, slide.Src, undefined, slide.Text);'|
	|'    });'|
	|'    showSlides(slideIndex);'|
	|'    return;'|
	|'  }'|
	|''|
	|'  fillEmptySlider();'|
	|'}'|
	|''|
	|'function addNewSlide(jsonData){'|
	|'  const json = JSON.parse(jsonData);'|
	|'  const slides = json.Pictures;'|
	|''|
	|'  if(slides.length > 0) {'|
	|'    if(slidesDiv.querySelector(\'.addPicture\')) {'|
	|'      slidesDiv.innerHTML = `'|
	|'      <a class=\"prev\" onclick=\"plusSlides(-1)\"><span>&#10094;</span></a>'|
	|'      <a class=\"next\" onclick=\"plusSlides(1)\"><span>&#10095;</span></a>`;'|
	|'    }'|
	|'    slides.forEach(slide => {'|
	|'      if(document.querySelectorAll(\'[data-id=\"\' + slide.ID + \'\"]\').length !== 0) return;'|
	|'      addImagesToSlider(thumbnailsDiv, \'thumbnail\', slide.ID, slide.Preview, function(){currentSlide(this)});'|
	|'      addImagesToSlider(slidesDiv, \'mySlides\', slide.ID, slide.Src, undefined, slide.Text);'|
	|'    });'|
	|'    showSlides(-1);'|
	|'    return true;'|
	|'  }'|
	|''|
	|'  return false;'|
	|'}'|
	|''|
	|'function removeCurrentSlide(id){'|
	|'  let slideImages = document.querySelectorAll(\'[data-id=\"\'+id+\'\"]\');'|
	|'  slideImages.forEach(image => image.remove());'|
	|''|
	|'  showSlides(slideIndex);'|
	|'}'|
	|''|
	|'function changeSlidePriority(id, priority){'|
	|'  const slideImages = document.querySelectorAll(\'[data-id=\"\'+id+\'\"]\');'|
	|'  if(!slideImages) return false;'|
	|''|
	|'  slideImages.forEach(img => {'|
	|'    let insertBeforeSlide = \'\';'|
	|'    if(priority === 1){'|
	|'      insertBeforeSlide = img.previousElementSibling;'|
	|'    }'|
	|''|
	|'    if(priority === -1){'|
	|'      insertBeforeSlide = img.nextElementSibling.nextElementSibling !== null ? img.nextElementSibling.nextElementSibling  : \'append_child\';'|
	|'      if(insertBeforeSlide === \'append_child\'){'|
	|'        img.parentNode.appendChild(img);'|
	|'        return;'|
	|'      }'|
	|'    }'|
	|''|
	|'    img.parentNode.insertBefore(img, insertBeforeSlide);'|
	|'  })'|
	|''|
	|'  ++slideIndex;'|
	|'}'|
	|''|
	|'function moveSlideInDOM(slide, slideInsertBefore){'|
	|'  if(!slideInsertBefore) return false;'|
	|'  if(slideInsertBefore === \'append_child\'){'|
	|'    slide.parentNode.appendChild(slide);'|
	|'    return;'|
	|'  }'|
	|'  slide.parentNode.insertBefore(slide, slideInsertBefore);'|
	|'}'|
	|''|
	|'function displayTarget(className, booleanDisplay){'|
	|'  document.querySelector(\'.\'+className).style.display = !booleanDisplay ? \'none\' : \'\';'|
	|'}'|
	|''|
	|'function changeArrowsColor(){'|
	|'  document.querySelectorAll(\'a.prev, a.next\').forEach(arrow => {'|
	|'    arrow.classList.toggle(\'btn-transparent\');'|
	|'  });'|
	|'}'|
	|''|
	|'function clearAll(){'|
	|'  document.querySelectorAll(\'.thumbnails, .slides\').forEach(element => element.innerHTML = \'\');'|
	|'}'|
	|''|
	|'document.querySelector(\'.btn.updateSlider\').addEventListener(\'click\', () => {send_to_1C(\'call1C\', \'{\"value\":\"update_slider\"}\')})'|
	|'document.querySelector(\'.btn.addImage\').addEventListener(\'click\', () => {send_to_1C(\'call1C\', \'{\"value\":\"add_picture\"}\')})'|
	|'document.querySelector(\'.btn.addImagesFromGallery\').addEventListener(\'click\', () => {send_to_1C(\'call1C\', \'{\"value\":\"addImagesFromGallery\"}\')})'|
	|'document.querySelector(\'.btn.removeImage\').addEventListener(\'click\', () => {'|
	|'  if(!getCurrentSlideId()) return false;'|
	|'  send_to_1C(\'call1C\', `{\"value\":\"remove_picture\", \"id\":\"${getCurrentSlideId()}\"}`);'|
	|'})'|
	|'document.querySelector(\'.btn.moveImageUp\').addEventListener(\'click\', () => {'|
	|'  if(!getCurrentSlideId()) return false;'|
	|'  if(!document.querySelector(\'.thumbnail.active\').previousElementSibling) return false;'|
	|'  send_to_1C(\'call1C\', `{\"value\":\"change_priority\", \"id\":\"${getCurrentSlideId()}\", \"priority\":\"1\"}`);'|
	|'})'|
	|'document.querySelector(\'.btn.moveImageDown\').addEventListener(\'click\', () => {'|
	|'  if(!getCurrentSlideId()) return false;'|
	|'  if(!document.querySelector(\'.thumbnail.active\').nextElementSibling) return false;'|
	|'  send_to_1C(\'call1C\', `{\"value\":\"change_priority\", \"id\":\"${getCurrentSlideId()}\", \"priority\":\"-1\"}`);'|
	|'})'|
	|'document.querySelector(\'.btn.showText\').addEventListener(\'click\', function() {'|
	|'  this.classList.toggle(\'fill-color\');'|
	|'  document.querySelectorAll(\'.slideText\').forEach(slideText => slideText.classList.toggle(\'displayText\'));'|
	|'})'|
	|'document.querySelector(\'.btn.zoomImage\').addEventListener(\'click\', () => {send_to_1C(\'call1C\', `{\"value\":\"zoom_img\", \"id\":\"${getCurrentSlideId()}\"}`)})'|
	|'document.querySelector(\'.btn.changeBgColor\').addEventListener(\'click\', function () {'|
	|'  this.classList.toggle(\'fill-color\');'|
	|'  document.querySelector(\'.slides\').classList.toggle(\'fill-color\');'|
	|'})'|
	|'  </script>'|
	|'<button id=\"call1CEvent\" style=\"display: none\">call1C</button>'|
	|'</body>'|
	|'</html>'|
И у элемента формы с именем "PictureViewHTML" текст редактирования стал равен 
	|'<html dir=\"ltr\"><head><base href=\"e1c://filev/C/Users/ezarembo/Documents/TestAutomation/TESTIRP/\">'|
	|'  <meta charset=\"UTF-8\" http-equiv=\"content-type\" content=\"text/html;charset=utf-8\">'|
	|'  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">'|
	|'  <meta http-equiv=\"X-UA-Compatible\">'|
	|'  <title>Slider</title>'|
	|'  <style>'|
	|'  * {box-sizing:border-box; padding: 0; margin: 0; user-select: none;}'|
	|''|
	|'body.fill-color{'|
	|'  background-color: rgba(228, 228, 228, 0.6);'|
	|'}'|
	|''|
	|'/* Slideshow container */'|
	|'.slideshow-container {'|
	|'  position: relative;'|
	|'  max-width: 1300px;'|
	|'  height: 100vh;'|
	|'  margin: auto;'|
	|'  display: flex;'|
	|'}'|
	|''|
	|'.toolbar{'|
	|'  width: max-content;'|
	|'  height: auto;'|
	|'  background-color: #f2f2f2;'|
	|'  background-image: radial-gradient(circle, #f2f2f2, #ececec, #e7e7e7, #e1e1e1, #dcdcdc);'|
	|'  display: flex;'|
	|'  flex-direction: column;'|
	|'  align-items: center;'|
	|'  justify-content: center;'|
	|'  margin-left: 2px;'|
	|'  box-shadow: -1px -2px 2px 0 rgba(0, 0, 0, 0.08);'|
	|'}'|
	|''|
	|'.toolbar .btn{'|
	|'  text-align: center;'|
	|'  color: #000;'|
	|'  font-size: 1.1rem;'|
	|'  width: 48px;'|
	|'  height: 48px;'|
	|'  margin: 2px;'|
	|'  display: flex;'|
	|'  flex-direction: column;'|
	|'  align-items: center;'|
	|'  justify-content: center;'|
	|'  cursor: pointer;'|
	|'}'|
	|''|
	|'.toolbar img{'|
	|'  width: 24px;'|
	|'  height: 24px;'|
	|'}'|
	|''|
	|'.toolbar .btn:hover{'|
	|'  background-color: #ccc;'|
	|'}'|
	|''|
	|'.toolbar .btn.changeBgColor.fill-color{'|
	|'  background-color: #ccc;'|
	|'}'|
	|''|
	|'.thumbnails{'|
	|'  width: 15%;'|
	|'  height: auto;'|
	|'  overflow-y: auto;'|
	|'  scrollbar-width: thin;'|
	|'  margin-right: 2px;'|
	|'  background-color: #fff;'|
	|'}'|
	|''|
	|'.thumbnail{'|
	|'  margin: 4px 1px;'|
	|'  padding: 1px;'|
	|'  border: 2px solid transparent;'|
	|'  cursor: pointer;'|
	|'}'|
	|''|
	|'.thumbnail img{'|
	|'  max-width: 100%;'|
	|'  height: auto;'|
	|'  display: block;'|
	|'}'|
	|''|
	|'.thumbnails .thumbnail:first-child{'|
	|'  margin-top: 0;'|
	|'}'|
	|''|
	|'.thumbnails .thumbnail:last-child{'|
	|'  margin-bottom: 0;'|
	|'}'|
	|''|
	|'.thumbnail.active{'|
	|'  border: 2px solid rgba(0, 0, 0, 0.75);'|
	|'}'|
	|''|
	|'.thumbnails-btns{'|
	|'  display: none;'|
	|'}'|
	|''|
	|'.thumbnails.zoom-img{'|
	|'  width: 0;'|
	|'  margin-right: 0;'|
	|'}'|
	|''|
	|'.up, .down{'|
	|'  position: absolute;'|
	|'  left: 6%;'|
	|'  transform: rotate(90deg);'|
	|'  color: #fff;'|
	|'  cursor: pointer;'|
	|'  user-select: none;'|
	|'  width: 25px;'|
	|'  height: 25px;'|
	|'  text-align: center;'|
	|'  background-color: rgba(0, 0, 0, 0.4);'|
	|'  border-radius: 50%;'|
	|'}'|
	|''|
	|'.up span,'|
	|'.down span{'|
	|'  position: relative;'|
	|'  top: 1px;'|
	|'}'|
	|''|
	|'.up{'|
	|'  top: 2px;'|
	|'}'|
	|''|
	|'.down{'|
	|'  bottom: 2px;'|
	|'}'|
	|''|
	|'.up:hover, .down:hover{'|
	|'  color: rgb(0, 0, 0);'|
	|'}'|
	|''|
	|'.slides{'|
	|'  width: 100%;'|
	|'  position: relative;'|
	|'}'|
	|''|
	|'.slides.fill-color{'|
	|'  background-color: rgba(228, 228, 228, 0.6);'|
	|'}'|
	|''|
	|'.slides.zoom-img{'|
	|'  width: 100%;'|
	|'}'|
	|''|
	|'/* Hide the images by default */'|
	|'.mySlides {'|
	|'  display: none;'|
	|'  text-align: center;'|
	|'  height: 100%;'|
	|'}'|
	|''|
	|'.slideText{'|
	|'  margin: 0;'|
	|'  background-color: rgba(255,255,255,0.5);'|
	|'  height: 100%;'|
	|'  position: relative;'|
	|'  z-index: 99;'|
	|''|
	|'  display: none;'|
	|'}'|
	|''|
	|'.slideText.displayText{'|
	|'  display: block;'|
	|'}'|
	|''|
	|'.slideText span{'|
	|'  text-align: left;'|
	|'  left: 60px;'|
	|'  right: 60px;'|
	|'  top: 50%;'|
	|'  z-index: 99999999;'|
	|'  position: absolute;'|
	|'  transform: translate(0, -50%);'|
	|'}'|
	|''|
	|'.addPicture {'|
	|'  text-align: center;'|
	|'  height: 100%;'|
	|'}'|
	|''|
	|'.mySlides.active{'|
	|'  display: block;'|
	|'}'|
	|''|
	|'.slideshow-container .mySlides img{'|
	|'  max-height: 100%;'|
	|'  max-width: 100%;'|
	|'  width: auto;'|
	|'  height: auto;'|
	|'  position: absolute;'|
	|'  top: 0;'|
	|'  bottom: 0;'|
	|'  left: 0;'|
	|'  right: 0;'|
	|'  margin: auto;'|
	|'  z-index: 1;'|
	|'  cursor: pointer;'|
	|'}'|
	|''|
	|'.slideshow-container .addPicture span{'|
	|'  padding: 10px 20px;'|
	|'  font-size: 2rem;'|
	|'  font-weight: bold;'|
	|'  border-radius: 50%;'|
	|'  background-color: #eee;'|
	|'  position: absolute;'|
	|'  top: 50%;'|
	|'  left: 40%;'|
	|'  transform: translate(-50%, -50%);'|
	|'  cursor: pointer;'|
	|'}'|
	|''|
	|'/* Next & previous buttons */'|
	|'.prev, .next {'|
	|'  cursor: pointer;'|
	|'  z-index: 999;'|
	|'  position: absolute;'|
	|'  top: 0;'|
	|'  bottom: 0;'|
	|'  width: 50px;'|
	|'  height: auto;'|
	|'  margin-top: -22px;'|
	|'  color: #fff;'|
	|'  font-weight: bold;'|
	|'  font-size: 22px;'|
	|'  user-select: none;'|
	|'  background-color: rgba(0, 0, 0, 0.1);'|
	|'  transition: background-color 0.3s ease;'|
	|'}'|
	|''|
	|'.btn-transparent{'|
	|'  background-color: transparent;'|
	|'}'|
	|''|
	|'/* Position the \"next button\" to the right */'|
	|'.next {'|
	|'  right: 0;'|
	|'}'|
	|''|
	|'.prev{'|
	|'  left: 0;'|
	|'}'|
	|''|
	|'.prev.zoom-img, .next.zoom-img{'|
	|'  display: none;'|
	|'}'|
	|''|
	|'/* On hover, add a black background color with a little bit see-through */'|
	|'.prev:hover, .next:hover {'|
	|'  background-color: rgba(0, 0, 0, 0.2);'|
	|'}'|
	|''|
	|'.prev span,'|
	|'.next span{'|
	|'  position: absolute;'|
	|'  top: 50%;'|
	|'  left: 50%;'|
	|'  transform: translate(-50%,-50%);'|
	|'}'|
	|''|
	|'/* Fading animation */'|
	|'.fade {'|
	|'  -webkit-animation-name: fade;'|
	|'  -webkit-animation-duration: 1.5s;'|
	|'  animation-name: fade;'|
	|'  animation-duration: 1.5s;'|
	|'}'|
	|''|
	|'@-webkit-keyframes fade {'|
	|'  from {opacity: .4}'|
	|'  to {opacity: 1}'|
	|'}'|
	|''|
	|'@keyframes fade {'|
	|'  from {opacity: .4}'|
	|'  to {opacity: 1}'|
	|'}'|
	|'  </style>'|
	|'</head>'|
	|'<body>'|
	|'  <div class=\"slideshow-container\">'|
	|'    <div class=\"thumbnails\">'|
	|'    </div>'|
	|''|
	|'    <div class=\"slides\">'|
	|'    </div>'|
	|'    <div class=\"toolbar\">'|
	|'      <div class=\"btn updateSlider\">'|
	|'        <svg x=\"0px\" y=\"0px\" width=\"32\" height=\"32\" viewBox=\"0 0 24 24\" style=\" fill:#333333;\">'|
	|'          <path d=\"M 12 3 C 9.263544 3 6.8151574 4.2316704 5.1660156 6.1660156 L 3 4 L 3 10 L 9 10 L 6.5917969 7.5917969 C 7.8747922 6.0167955 9.8149031 5 12 5 C 15.859 5 19 8.14 19 12 L 21 12 C 21 7.038 16.963 3 12 3 z M 3 12 C 3 16.963 7.037 21 12 21 C 14.736456 21 17.184843 19.76833 18.833984 17.833984 L 21 20 L 21 14 L 15 14 L 17.408203 16.408203 C 16.125208 17.983204 14.185097 19 12 19 C 8.141 19 5 15.859 5 12 L 3 12 z\"></path>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn addImage\">'|
	|'        <svg x=\"0px\" y=\"0px\" width=\"24\" height=\"24\" viewBox=\"0 0 172 172\" style=\" fill:#000000;\">'|
	|'          <g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M78.83333,21.5v57.33333h-57.33333v14.33333h57.33333v57.33333h14.33333v-57.33333h57.33333v-14.33333h-57.33333v-57.33333z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn removeImage\">'|
	|'        <svg xmlns=\"http://www.w3.org/2000/svg\" x=\"0px\" y=\"0px\" width=\"24\" height=\"24\" viewBox=\"0 0 172 172\" style=\" fill:#000000;\">'|
	|'          <g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M71.66667,14.33333l-7.16667,7.16667h-35.83333v14.33333h114.66667v-14.33333h-35.83333l-7.16667,-7.16667zM35.83333,50.16667v93.16667c0,7.88333 6.45,14.33333 14.33333,14.33333h71.66667c7.88333,0 14.33333,-6.45 14.33333,-14.33333v-93.16667zM57.33333,64.5h14.33333v78.83333h-14.33333zM100.33333,64.5h14.33333v78.83333h-14.33333z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn addImagesFromGallery\">'|
	|'        <svg x=\"0px\" y=\"0px\" width=\"24\" height=\"24\" viewBox=\"0 0 172 172\" style=\" fill:#000000;\">'|
	|'          <g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M21.5,21.5c-7.90483,0 -14.33333,6.4285 -14.33333,14.33333v71.66667c0,7.90483 6.4285,14.33333 14.33333,14.33333h93.16667c7.90483,0 14.33333,-6.4285 14.33333,-14.33333v-71.66667c0,-7.90483 -6.4285,-14.33333 -14.33333,-14.33333zM143.33333,50.16667v86h-107.5v14.33333h107.5c7.83362,0 14.33333,-6.49972 14.33333,-14.33333v-86zM87.03581,64.41602l31.7041,43.08398h-101.31315l25.11133,-32.01205l18.74251,22.56381z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn moveImageUp\">'|
	|'        <svg x=\"0px\" y=\"0px\" width=\"24\" height=\"24\" viewBox=\"0 0 172 172\" style=\" fill:#000000;\"><g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M86,20.99609l-50.67057,50.67057l10.75,10.75l32.75391,-32.75391v100.83724h14.33333v-100.83724l32.7539,32.75391l10.75,-10.75z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn moveImageDown\">'|
	|'        <svg xmlns=\"http://www.w3.org/2000/svg\" x=\"0px\" y=\"0px\" width=\"24\" height=\"24\" viewBox=\"0 0 172 172\" style=\" fill:#000000;\"><g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g id=\"original-icon\" fill=\"#333333\"><path d=\"M78.83333,21.5v100.83724l-32.75391,-32.7539l-10.75,10.75l50.67057,50.67057l50.67057,-50.67057l-10.75,-10.75l-32.7539,32.7539v-100.83724z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn showText\">'|
	|'        <svg xmlns=\"http://www.w3.org/2000/svg\" x=\"0px\" y=\"0px\" width=\"24\" height=\"24\" viewBox=\"0 0 172 172\" style=\" fill:#000000;\"><g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M28.66667,21.5v28.66667h14.33333v-14.33333h35.83333v100.33333h-14.33333v14.33333h43v-14.33333h-14.33333v-100.33333h35.83333v14.33333h14.33333v-28.66667z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn zoomImage\">'|
	|'        <svg x=\"0px\" y=\"0px\" width=\"24\" height=\"24\" viewBox=\"0 0 172 172\" style=\" fill:#000000;\"><g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M64.5,14.33333c-27.6214,0 -50.16667,22.54527 -50.16667,50.16667c0,27.6214 22.54527,50.16667 50.16667,50.16667c12.52732,0 23.97256,-4.67249 32.7819,-12.31771l3.05143,3.05143v9.26628l43,43l14.33333,-14.33333l-43,-43h-9.26628l-3.05143,-3.05143c7.64521,-8.80934 12.31771,-20.25458 12.31771,-32.7819c0,-27.6214 -22.54527,-50.16667 -50.16667,-50.16667zM64.5,28.66667c19.87509,0 35.83333,15.95824 35.83333,35.83333c0,19.87509 -15.95825,35.83333 -35.83333,35.83333c-19.87509,0 -35.83333,-15.95825 -35.83333,-35.83333c0,-19.87509 15.95824,-35.83333 35.83333,-35.83333zM57.33333,43v14.33333h-14.33333v14.33333h14.33333v14.33333h14.33333v-14.33333h14.33333v-14.33333h-14.33333v-14.33333z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'      <div class=\"btn changeBgColor\">'|
	|'        <svg xmlns=\"http://www.w3.org/2000/svg\" x=\"0px\" y=\"0px\" width=\"24\" height=\"24\" viewBox=\"0 0 172 172\" style=\" fill:#000000;\"><g fill=\"none\" fill-rule=\"nonzero\" stroke=\"none\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"><path d=\"M0,172v-172h172v172z\" fill=\"none\"></path><g fill=\"#333333\"><path d=\"M58.81706,14.27734l-10.13411,10.13411l19.94629,19.94629l-41.4043,40.11653l-0.04199,0.042c-8.26713,8.26713 -8.26713,21.93925 0,30.20637l36.5472,36.5472c8.26714,8.26713 21.58008,8.62629 29.49251,0.71386l36.54721,-36.5472c8.26713,-8.26714 8.26713,-21.93924 0,-30.20638l-14.33333,-14.33333zM78.74935,54.49186l26.55306,26.53907l14.33333,14.33333c1.59977,1.59976 2.39356,3.28442 2.39356,4.96907h-86.93783c-0.25887,-1.92147 0.39909,-3.85644 2.22559,-5.68294zM143.33333,114.66667c0,0 -14.33333,20.78333 -14.33333,28.66667c0,7.88333 6.45,14.33333 14.33333,14.33333c7.88333,0 14.33333,-6.45 14.33333,-14.33333c0,-7.88333 -14.33333,-28.66667 -14.33333,-28.66667z\"></path></g></g>'|
	|'        </svg>'|
	|'      </div>'|
	|'    </div>'|
	|'  </div>'|
	|'  '|
	|'  <script>'|
	|'let slideIndex = 0;'|
	|'let interval = false;'|
	|'var call1C = null;'|
	|''|
	|'const slidesDiv = document.querySelector(\'.slides\');'|
	|'const thumbnailsDiv = document.querySelector(\'.thumbnails\');'|
	|''|
	|''|
	|'window.onload = () => {'|
	|'    document.querySelector(\'.thumbnails\').scrollTop = 0;'|
	|'}'|
	|''|
	|'window.onresize = () => {'|
	|'  fullThumbnailDisplay(document.querySelectorAll(\".thumbnail\")[slideIndex])'|
	|'}'|
	|''|
	|'function zoomImage(e){'|
	|'  if(e.target.nodeName !== \'IMG\') return'|
	|'  document.querySelectorAll(\'.thumbnails, .slides, .prev, .next\').forEach(node => node.classList.toggle(\'zoom-img\'))'|
	|'}'|
	|''|
	|'function send_to_1C(name, data){ '|
	|'	call1C = data;'|
	|'	call1CEvent.click();'|
	|'	'|
	|'	//var event = new MouseEvent(\'click\', {'|
	|'    //	\'view\': window,'|
	|'   	//	\'bubbles\': true,'|
	|'    //	\'cancelable\': true'|
	|'  	//	});'|
	|'    //event.propertyName = name;'|
	|'    //event.data = data; '|
	|'    //document.dispatchEvent(event);'|
	|'}'|
	|''|
	|'function getCurrentSlideId(){'|
	|'  return document.querySelector(\'.mySlides.active\') ? document.querySelector(\'.mySlides.active\').getAttribute(\'data-id\') : false;'|
	|'}'|
	|''|
	|'// Next/previous controls'|
	|'function plusSlides(n) {'|
	|'  showSlides(slideIndex += n);'|
	|'}'|
	|''|
	|'// Thumbnail image controls'|
	|'function currentSlide(thumbnail) {'|
	|'  const pictureId = thumbnail.getAttribute(\'data-id\')'|
	|'  let indexOfSlide = 0;'|
	|'  document.querySelectorAll(\'.mySlides\').forEach((slide, index) => {'|
	|'    if(slide.getAttribute(\'data-id\') === pictureId){'|
	|'      indexOfSlide = index;'|
	|'      return;'|
	|'    }'|
	|'  })'|
	|'  showSlides(slideIndex = indexOfSlide);'|
	|'}'|
	|''|
	|'function fullThumbnailDisplay(thumbnail){'|
	|'  if(typeof(thumbnail) === \'undefined\') return;'|
	|'  let getThumbnailBounding = thumbnail.getBoundingClientRect();'|
	|'  let thumbnailsDiv = document.querySelector(\'.thumbnails\');'|
	|'  let scrollTop = 0;'|
	|''|
	|'  if(getThumbnailBounding.y > 0 && (thumbnail.offsetTop + thumbnail.offsetHeight) > (thumbnailsDiv.clientHeight + thumbnailsDiv.scrollTop)){'|
	|'    scrollTop = thumbnail.offsetTop + thumbnail.offsetHeight - thumbnailsDiv.clientHeight;'|
	|'    thumbnailsDiv.scrollTop = scrollTop;'|
	|'    return;'|
	|'  }'|
	|''|
	|'  if(getThumbnailBounding.y < 0){'|
	|'    scrollTop = thumbnailsDiv.scrollTop + getThumbnailBounding.y;'|
	|'    thumbnailsDiv.scrollTop = scrollTop;'|
	|'    return;'|
	|'  }'|
	|'}'|
	|''|
	|'function showSlides(n) {'|
	|'  const slides = document.querySelectorAll(\".mySlides\");'|
	|'  if(slides.length === 0){'|
	|'    fillEmptySlider();'|
	|'    return;'|
	|'  }'|
	|'  const thumbnails = document.querySelectorAll(\".thumbnail\");'|
	|'  if (n >= slides.length) {slideIndex = 0}'|
	|'  if (n < 0) {slideIndex = slides.length-1}'|
	|'  slides.forEach(slide => slide.className = slide.className.replace(\" active\", \"\"));'|
	|'  thumbnails.forEach(thumbnail => thumbnail.className = thumbnail.className.replace(\" active\", \"\"));'|
	|'  slides[slideIndex].className += \" active\";'|
	|'  thumbnails[slideIndex].className += \" active\";'|
	|'  fullThumbnailDisplay(thumbnails[slideIndex]);'|
	|'}'|
	|''|
	|'function addImagesToSlider(mainDiv, divClass, id, src, listener, text){'|
	|'  const div = document.createElement(\'div\');'|
	|'  div.className = divClass;'|
	|'  div.setAttribute(\'data-id\', id);'|
	|''|
	|'  div.innerHTML = ` <img src=\'data:image/gif;base64,R0lGODlhZABkAPf/ANPT0zMzM5ubm7GxsXR0dJeXl1paWuHh4dvb2319fYaGhmhoaFBQUGRkZEFBQaelpSAgIFRUVBQUFK+vr2FhYZOTk5WVlUtNTbe3t5+fn7q6ur29vb+/v4+PjwoKCqKiolxcXC0tLZGRkayrq42NjUZHR4mJiYuLiyMjIzs7O4ODg15eXgMDAxwcHCkpKW9tbZmZmc7OzsfHx8zMzMjIyMvLy/7+/v///8XFxcbGxsrKyvLy8ujo6PPz88TExMnJye/v78PDw/39/dDQ0Pz8/Pv7+8LCwvn5+e7u7vj4+GdnZ9LS0vr6+t3d3fb29vf39/X19ebm5tXV1fHx8dHR0fDw8Nra2tfX19nZ2d7e3sXGxuXl5fT09Ofn5+3t7eDg4OPj4+zs7O/v7+np6eTk5NbW1tjY2N/f38fIyOvr68LDw+rq6vPx8cHBwcPExM/NzczNzcTFxcbHx/r4+PLw8Pb09M7MzM3OzsjJyf79/evq6s/Pz+/u7vTy8srIyMnHx/v5+f38/MvJyeHg4PXz88zKyvHv79nY2MnKyvDv7+fm5srLy9PR0dva2vz6+v/+/uzr6+jn58fFxfj29tLQ0Nzc3MjGxvz7+9fW1urp6eLi4sXDw8bExObl5dTU1NfY2Pf19c3Ly+7t7c/Q0MPBwdTS0tHPz97d3dbV1eTj4/n398vMzO3s7NjX18HCwuDf3+no6MTCwuXk5NDOzvDx8d3e3o6Pj09PT+nr6/T19eLk5Ojq6oyMjOXn5+bo6MDBwe/w8N/e3pCQkIqKimNjY1dXV1JSUtrZ2cDAwJSVlSwsLGdoaJyampaXl4iIiJKTk5SUlFtbW2VlZbi4uJycnKChoSsrK9rb25iYmE5OTpqbm76+vhAQEEtLS6mpqV1dXV9fX9bX1+Dh4c7Pz1pcXLm5uXFxcby9vby8vBkZGXl5eTExMbS0tGlnZ7CxsZaWlrGxse7v74CAgL6/v66urq2trZKSktDR0Y6OjkpKSqqqqjAwMGZmZpqams3Nzf///yH/C05FVFNDQVBFMi4wAwEAAAAh/wtYTVAgRGF0YVhNUDw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkJGNDY5OUNEMzkwQzExRUE4RTY0ODQ0ODI2QUFGMkNDIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkJGNDY5OUNFMzkwQzExRUE4RTY0ODQ0ODI2QUFGMkNDIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QkY0Njk5Q0IzOTBDMTFFQThFNjQ4NDQ4MjZBQUYyQ0MiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QkY0Njk5Q0MzOTBDMTFFQThFNjQ4NDQ4MjZBQUYyQ0MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4B//79/Pv6+fj39vX08/Lx8O/u7ezr6uno5+bl5OPi4eDf3t3c29rZ2NfW1dTT0tHQz87NzMvKycjHxsXEw8LBwL++vby7urm4t7a1tLOysbCvrq2sq6qpqKempaSjoqGgn56dnJuamZiXlpWUk5KRkI+OjYyLiomIh4aFhIOCgYB/fn18e3p5eHd2dXRzcnFwb25tbGtqaWhnZmVkY2JhYF9eXVxbWllYV1ZVVFNSUVBPTk1MS0pJSEdGRURDQkFAPz49PDs6OTg3NjU0MzIxMC8uLSwrKikoJyYlJCMiISAfHh0cGxoZGBcWFRQTEhEQDw4NDAsKCQgHBgUEAwIBAAAh+QQJCgD/ACwAAAAAZABkAAAI/wD/CRxIsKDBgwgRJpGmLIXDhyEo7EhIsaLFixgzEsTBbd2+jyADSGCnsaTJkyZ1QAgBEmQIFBpQypxJU6C/lS0/vtxQsyfNKlkw3mSZcydGJ1V8Kv0nZEa0FD8uDs25z6jFS658WDmylCYCdRfArTCQxOLUoih4WryCI4aMH4qIdDUp5l22YkqULMj3wCxOtGopcjHiz1+MGjhmJJ17sQi7CAz4KeFHmYIxLxXPtrSa8AYcGoULx9CRA0tZxgmLEChBYQHl1wuMJcj8d3PaiorUxAjNW4YMKKgRqvr2bfLr10q6laGo2eXthERw1OBNPQiX4Ahl3DJ+XLKBBUISNv/X+RyhlbbURcephB2hDXN4u1Pey0F8beeBDTohlT50jRyBtIdQJZHJR9kKIDyB0HhVlVfQDXvI0J9hQfAgYEImROCafAtc8M6C95GXH0GZGLFbfzTUcMOFCCVSDAUG8tPALbAcxCBnBAmhxXQTBtEDiwnBw8CG3cUmj40hNjiiQE34cCJ1MeBgBZAJMUFBcQYmJ4VBNzooUBKETTgDDnJRiVAO2XB3nBIGKFHmQF2OeMMQMjzJWwxBbGFmQjYQEB+H+cBTUJwFpWHihD/oYAN2RTiRkSbGSBMjBcVcB2eSOAohgw4T+mPERBgFUkRJRGBTgSejXlSAMUQet0A2BRD/ROhAZzjZXww5XIHRDWLUUEiqGG2jwDu8fBDFRTsYAKOBDWTTxaVE2RbYEUHAISYnjlykCgBB6KBFKxntMAwM/QhgTwcbgErRBLe0ilwECaz4T5foCHQDADnccWsQmlhERCo5SFhYDoRgNAIJAvRTLgwkVDAEsAcxQQwIaiKXTygC1YApCtMI1MOh/engx6J8evGDDzM8iccQ8lLUiQIJK6ywAMRmQAZFs9wSoxLRUCCXDBsLekOiE8agxmIIOcFIt3YWhgMrFQlRgD0xyzyzPSRgIEZC8vxZZDfl/KNStC5BEBMf6KWH65YIFTGID3VOWEMNbx5EgwLUWK13wh2I//ADEwdFEUEDk67AxBceoKD44op7EAMglHTqjw9cGWTDGmjgYFinuDaREB0dFKD36OUWQEIGX5BMkAWsGrgXO0Vc4EIAtNdujQNJ6JFD06L58MVBXFDhQw289yfDjwdlocI7VZMuswAVkDABZgQluyxy/BTTzRD/EOHEE+CHD8qoR9wjXdM6yJBHQUwg4AMNxatdwzZbH2RDKyKcAEPzzissjDA0UNBA2NEu5HzDGCrw3EVskIkf5IA6RkACQRiYA81Jjjo5oMEYWnYQJwSBFx3gn/MEgA0SYAMB4eneAiimBApE4AX+UB1GDpeDH7zBLUuQ1w12cIfhxQ9KNMDBGf8AdxEv6MMZ0BAh6QQADRJ4Iw0CAcAFiFEMA8BDgCfpARW0oAMjVC4Jn/ABHn54pxr4gAqWyogNEGCBYWBDiaT7Xw7KYgIGvGMNNbGBHmigJyF0IQcPvKBoxvSDNMhQI0eoAQnwUa7+Pa+EFYgCEY6lFLk4AQ0oI2NvJAEGiKEkEfUYRgXguDd8WAA1M3CDJkWjAxwAADg+sYEmYDCMApByZiZYBAeVsgYLSu4OY6qBGA7ZkyLMAB8kaOQS7QGNFM7lBm4ho290Ube5TIEdJhABHBVws+BAAQfWUtvJzIDF9iiiGiZgntUEcIIJCCgLaQvNDDgxA1rssj1E2IMweLH/P4VhwwR1EBARZMCjgcmADM40Exc2cAJtUsMZOGARD5wUgx/goBKV2xNB1lCNE/DCHtUMjg3MmIMh5EKjCTnAA8RBJSiUoX49scEU2LCDmtr0pjjNKRvY8AQmhFRANjjCJKYw05wa1ag0FUIlCDq3pjr1qVBtKmkoSSVYkEIQUc2qVv/QiB/oS5CCpAEV7omdG3hCYGC9oA6GkNawSoGswbmBFdDa1gkNga117RQN3koludI1r9S5K2AntFe4osavg+2PYBNLncL2da6MDSxeI1sYxwIJsZQtzGIza1kWYTazQyBeZv1Bgxz29RN/TWwMZjCEDNLgtbCNrWxnC9s2/wDAsKgxAzJoy9veBnEIT9gCD4ZL3OIa97g86EIUuoCEhLLIBmLwRS+6gNzqIhcMp+mJEOjgyfYIoQo/Rek/buAFHXBgCVQ6xAZ+oAdiahQKpggC8bQA0/ZwYRP+MKMd2IDb9hzBCm6AX2EQMQPnMuYGpBXNya5QzueOAQe+FA0O9NQeL4AsNBXshIEPO4UayJd3M6BBRhkjBBpwCkoz8EEhxNDfmhzhCmr4QfzcoqvgNGnGPwiCJxxF4i1oIZAXlAEdUOMEH4BVDjjQRHhRcgM+eDhlYAVNi08yhHhyLsWCCIN7TTIHKbRBxmAdjREUOBdZGAERaR2NGhjBY5QEQv8TONhdWmcgISg6wQrqogkUzCBBYMwiBzNIswyE2F2L3AAJNMhkWl/byX/YIAdGyEEWsiWTIsDTB5RjShRokNpOjUkGa9hyB5fAtDCnzwyw/McBbFVDQ5rkcn9IjFvMMJAkNKGGqzSMh0dRsIpYehNxAyudY1DfORiZlTigQp4rcoMqTE60A5tC9aggnTQnuglEPMgccmDkXPtDBnysG4SCXZg7BPEUZbKButetboEQwQxBADNvfhDDHPHgB3IIdFpx4ANQIKQKtgJr+irR4H8gIQjxQwYZHlEJKizh4RCnAhZs0AUOFC9KkTDIEc7wljeEuQ31JcgNyiBnzv0nBtL/thzRJuQDJ4BJBzCPOcyNkITodKoGPyg0FKgN7aKV1LBHALTkCMqD8IIB4bfKwZSmUIgJySCgN076GdwThkLkIJz9mUEQCl6QLcSheD+QQRZGXBBAxEHf6dG6XNaAdurIgA1MyUFBqUNnrgukCAfI4K18cACL5GERJ/ZPDpaw7ActoeRQCkLf/xGGtvemDwKJwoXvRANPVKQOnshB4AtTAxls2CCJOHZhNoULUQvEEEgPGQ1IhgTHh+Z4ArHBDOg9IRwkoiI2aL3QKRSGXS2hTn6QwReyzScd0F5tbUCaGFw/euT9YwdhCpkdTO9uMsgADTGgwQymLJBJ+AAHZXB+/0W2oMpbyYBlA1m+051/L8TfSQsZv4gTsICDNgRUI1NAAvUHUoTEdCoW2fUP6mc84jcHbnBzOZcRYhByc4EJ7hcaeMIeBDGA6QF7BIEA5ac2OUBm4jUQU6AbE5I+zkWBbid+/xAIaLB5GHR/HehoNYAHRRNBBkGCvWGC/6AHk8cbaFAKLSgQPJB6UPIHMXBPNPh6NngDIdYp9NWClyB3nWIEXFeEzXcQfaAGnYIIdvB5LMIWF+cDWIAQUvhtNjheh3dxONBNGkUIQXBzngeGzCeGCAEI/tcfq0ADgKBRN2AHoHErRtB7brh+KQWEvPEGOdAIGqUHgsgb2mdYYWiBB82hKXPndqnGIo5AUE84iTP4ho54EJCQg6FBA0OghYzhBEYgb3cCfhXRiGM4EDdQA3uYHsG3ZKixA3YgA1DmH1ogiwKoias4EFywhnRni0hDJUJABjSABhBoBGNgEapoEYcQT37wA2Sgi+2RBI2Aaz+gIszIixZRBGfnDzpAAwhgd3tiCNS2Db04gdxoEZrwZQBQeC0oBGCwCxjRjBZhA00QBfvXg6m4jvx4Ia3ndJD3jxcSBqbIGzgwZAQpIEVQBjFwVxA5BDEAAIV2IQEBACH5BAkKAP8ALAAAAABkAGQAAAj/AP8JHEiwoMGDCBEy4dXghcOHSkz0SEixosWLGDMSpMJgAb+PIJUw0KGxpMmTJqV8kwYSpDQDS1DKnElT4JWVLT++9FSzJ01QYzDeZJlzJ0YEyHwq/WejSQV5Vi4OzcnPqEVDLFgs4LGUJo8HwyxYsAfI4tSiBnhaNOAhgIR0MKB0Ndmj3DBhAvoJMBHELE60aimWYrFvXwAXHkIYmYuRSAxhJPT2m4wN35SKZ1taTWhDWboAhQ234CYtCmOKRD4oKJB38mQB+Lxh/qs5bUVsLECH3rdunwQJUU8fPAINWmvXrk2AoZjZpe2EfTy46L27cAAWoYQjNEPiOHIB9gQI/0nYXOdzhNLaVrfuwZx2hDc+iPDuei8A8rSdBzaIhfD6wi5wM9F7B0URGXLIWQDNEQiVV9V5Bd3glm7VXZcBgQnB0wF9r51QToP5mbcfQR/k9l8A6bgwHoYH9SACNgi6BgMvYhzk4GYEQcENChTutg4Lb7CY0A/dxagXPiPYGOKDIwpkjnrrBeABP0ImVEQBFhg5mQmaGHQjhAINwkII/+2D2GVVbscLh3rZ08+KA305og0OSNBjaNfZkyZnH4Rn5F4/FCRnQSOYuN46LaBAhHZCMJFRGvjAoOU7IjxB0KADJSEBCtRV9yNJGAVSRElCzKCDHnBWNI0tbArAy4dxLv+JYwJQVshNNBjdIEYNhYyaUTBB1JADFTtcBIU9BWg5IxKxElVbYFGwoEyZ1njAykWqABCEDlq0ktEROMzgjz8//HHGHBbRsOafHXhzg02yGnDfPzfkw82d7ClgERGp5CDDuP7kQAhGUsgQA8BwyPADD6kaVAQ20Gi5VxMCqeSsc1QIhIGhnkLQAoOcefGDDzMcPC4eQ7xb0Q5BAOyysKagiVAWvGjZTwXvjLdEvDP8U0Q6EHS623VJJeQEI9ua7DIO11JkQw0/uOxyDD/IgIClCOkz35/DMPKPxVQZhQ/HQ0twi5WD+GCw1ADXUMOiCZERhNJsj4sGDbI0LJAXtkj/amQBBRARRTYrFG74CuB0E8UU3Ez7nzIedHGQDWuggYM/dEsdQw4UI5QEDeLWLfUMOcSQiMoETYMPm9SYMEMR6hCzwOy0U6AOEfbkJjR7CRzEBRU+1JC56DIMaJAYrggvuuY6yHAFKAU58UyyMdozzAH/EPFEEtx3/8SiZDggXY/roJAO1gMxgYAPNAxfdww1bFPjQTdAgkcOoS/vMg00kOGrQP4o0muS0YERSO4iR6hGCyQQAt1cBwMEsUEmcnA5/UktBzQYA+oOwoQDYNCCAIsB6UIhChsIRAjUiJgAsNGBDFTChBrJRAIk0IIAuMUBKrvBDu4QPPexLQY0wMEZ/xxlLE/gQAc+ZF4OACCXf5xhGDAQgT1qALKT7MEB3IAAC74gkCNcwQd4SOLUauADKnChJDbwgg7CJcb90SAVi5oACcoxv5kc4QHpGAZTIpGDHIBwXCLEwQ/SAEOTFGELMvjXH/0xAxnooA5CaJpPziiEkZVskTKQBBj+JxMnSCEHP2gjIOXQM8ZQYW5/jMEamaiUGxgCDmy0YAx8sIUNKiUTFdTfHWaAgxqIoZBKEUIUEmnBH+gAmEu5QQzWtrxE6gJup0mCFQTpQx/IjDFQwAEc3jcyM6DvPVMYQi/ptjkzECgLOMjcDDgxA1rY8j026AIN/AgwXlZROESQQQ1c5v8vMuiNRUwIxgdjgIMuYYgHPogB1XBQiXvuSSCgKAUFf/BPxjzNBzkYQi4emhA6SKGOGIJCGUBKk0ewYQo7SKlKV8pSlp50Ck44AjIxZIMjTGIKU2BDS3e6U50KoRY5cJtQh0rUog5VBz5YTppgQQpBGPWpUP1DI0K5SAvSIGVVuoEnFFnV5elgCF3VHw2k8E7t3MAKXA0r24YAVrXWbaxlFc5Z0+pWgLG1rmyDa1bRilep3bWvANOrkOYKWLu2tbCCZRFhC+uPvyKWrHulK16HoLzC4oEKcT3NDT4hWbeKUJz8C61oR0va0f4CslUyAzJKy9rWBnEIR9gCD2ZL29r/2va2POhCFLrghZkSyAZi8EUvuoDb4uIWDEkIJh04SSAhVAGaHI2QGjkQEyEdYgM/0INv9wQFUwQrBlogqXC4sAl/kNEObMgsgY5gBTe0b1yImEFFk+kPGgByZFf4JotsMAYc5BKQONgCgbxghMxRsBPz7coNplCD77JtBjRwaFeEQAMd/HAGPiiEGNTbEy+qgarvc552mpBQ0VEtCJ5wwmmEsAUt0NOCMqDDaZzggz/KoaDQrckN+NDgS4LQvhxGiThFKUIfCCIM2y3JHKTQBhDLUgdG6NxcZGEERCxSlWpghIplEghN4KB0i2ykP9LwDydYoVg9gYIZmAWMWeDv/8oyECJzL3IDJNCAZKIcF/82yZQcGCEHWXDETIqATh/4gEHCpEFnRcdLGawhyQZxwhKSlsrmmaGJ/zhAiUFJSJNQ7g9slIE5BZKEJoAyz/ALwigGVhFCb4KZIGxkDEA6hxoDco3EysgNquCPHgIsB9fcARV6eeU7N4GIB5lDDmqcZ3/IgAZbgO4N9gBrf9whiKeAmw22ze1tC4QIZgiCk8cVNWAKgQc/IGVVceAD6B2kCiX+Y/Mqod9/IAGVdUMGGR5RCSos4d8ApwIW4skB9xE0EgY5whkU9oZUtkG8ArlBGcC8PPiV7poDsYExl+cDJyTBCDoIuchDboQkEOG/Uv+D2pz/AYVhV9bEGc3sEd7czBrwIMcDAQO+NZeDqEyhEMSrwz9IbPAcnAEhNghDIXKwTUYHod4F2UIc3Fe1LEh4IICIQ/5GF4RFrWHrLpMBG/4hhKAyWgZQF0gRPGjfH/oAexXJwyIs/LIcLAHN8FkCxTUXBLiHAewAk0EfBBKFAr+PBk0qSB08kQO6t00GCR5IImw9LkfiAtL/MMTOpaYDGsAQCYCv/IBsMIOoiQ4HiaiIDUBP8xgEIQy5WoLB/CCDLyCbMzow/Q/bUIWBiCH0zjbeDozgVTtgPntkkAEagDiDIA9kEj7AQRmMV5EtuMHgMsCqQH5PPOPdAAB7n5r/FhB+ESdgAQdtELpGpoCE46s9XMuLRXJ9D/ziEWQOblieyjMiBogvBRPhF0JBUAkFwX11Y38EgQDX9z6cE10GMQVq4EPN0zAGyDYIOBCBgAaOxzY5oH4OyBQ1gAcmZgTMUoD1R30CoQeGVzdoUAofKBA8sHkh9Acx8E4VKDUXOBA3AGHLE14feAlmJzpGAHU3GHYoKBB9oAbLgwh2EHnvcQXp9D4+gAUIUYSBd4T0oncGhwNkEF2E0DKiUwOQV4UniBCAAH91swo0UBZ7cgN20HY/ZASwR4bdlxAHIIPj8gY50AgPpQd4qGfNlxBWKHoJIQT61EyYxiKOcIhCmIjHvlOGCQEJK5hXQ+CES+EERjBuAFYGFTGIwUcRN1ADcCg1tIdz77EDdiADPjYuNaAFpkgQnpiDvgOGLtNIM9B7eyIEZEADaBBCRhAUnQiJFHEIUTgufvADZPCKLJIEjXBqP1ADQRaLWFgQRaB1/tB5V/OCAmEIw7YN02iCdWgRmtBkAIB32kh2YLALGCGNF9EUUeB+50iHB/iN8bgUoEc8g1eP7xEGmjguOCBj+qgdRVAGMcBWBjkEMQAAK4chAQEAIfkECQoA/wAsAAAAAGQAZAAACP8A/wkcSLCgwYMIEV5iByODw4cC4DlJSLGixYsYMxJE0IFav48gBeDDorGkyZMmrcAAybJfhS8oY8qcKbAJtpYgKwyiyXNmEUIYbeL8qBNjFFM9k/67kegHByQXhQ4tarGHg3y2RCmdSQhAHB06fgixKBUn1YoKLiyIYADepK0mmTTxQcOfvxg+NJG9OXVnxVMOlvFbQOFWA0ZwMdrgQSOH3cczZMypWLblWYQ2pEVQwq/zgmi3TqRJTFEIFTU1Yjy2G0OOJ8p8zfpNCK/Egs64OUeIMJt0QSJgVwv3MYViZZaXDUK5QAG3c35K8pXxjRAJDuGrf/izkfB4zt4GSaj/fe75wjvqCG9QqYv9ro/RCL0TBU9QUwnyuCkwmIj+YA8t7dlVww9ExBebZfQJdMMLm+G3QAkY9JfQIXKohl0MODRh4FAuJfiPBrbhp0QxFHAn4UFMoFFDgDPgkMRB8nV4kCoMgMMZeUqUYMWJCSmCwxvtxSCDFDAeiFyCFnRzG3kLZIMPjwnZUIMOAfpDnEExJvcPDyU0gB8/FGTTA5QJiYLDHQFqZ+JAWYJ3gzkNMlnCBGQmdMMS7F3oQxQFtVkQMg4s+ZwSBnwzlm9CFJGREznYEWANNCjKppHfEXSEMSvcOGgJV2TUww4l5THDD2Gs+VcOFgqHoYaTcngZNfkI/+rcAgwogBER5aCAgiEafWHEIjhQwcVFRdCwYnstPtFqXwN50eWXxFxQxUUIdOMBCh5QkBEgOMxgFw0ynMGERVHEkapwQ95QE6VEwbSUOgzIitsC+TxgkRgmSCBBAOuE4EGnF0mBKmQ5/DDGoZiFol2APkz7DwLsunSGQDMEKiIIBkiKUBETQOCBNQHss08A6aRgKkI9BAHkajHUgAMloCZkyHVp1qDuFRFXgMA/RBQDgqbO5TgERWWUcG3IIoscgAfsVGTDqAHG8EMOlbyIECpoRO2DGP9gEbE9B/wzQohMGpNAQl4kwE06/Cad9DooQDBmQluocW57MtDQCcIEPf9hibft1TCEEGOQ8M7hiL/TzDBIcGEMMV82kA9UBjHxQTrchIC020kvrU5CR8gAeJUC4hBDFeoWVMnAeq5BxAfYCCD77AV4I8QEFjPZDTUH7eGABy5szrnbIUhA5EGGIJMa6Y9JLckhyhJUxA/HCveDD6AKkcQc3HN/RBJjjWFONhTIqsQ3xYxLUBQLeNBC28NzHoALLMCTXhg0dMv8anlvUeBAkTDdaiBVhphZhAkaMAADpHGjdpRAEH2rBub2sY74yS8E3JBABvhmkCIcIAcy2B9rWjQDMZjIBrNY2AxoMAQknOxe1DCGAZSwFgKkzgY5WAfwhGfBdZCMG+qAj0X/niAFH+jgblHTAQ48AQWBTMEHo9IBGf53kiYQ4BYGKAF8vhAN9/HQggHAlgOWUJIbiGERUERigNDwBzAUyApUi55MmHCOYtAJChbQFwUt6LYAKIMbLRiB+kxChCjIwRIi9McbZpCDP/TABk1MyouwIIEd8vFt68AcL7g2kyeUAQc/UOOFclAD0vjri/ELgMfycTye3KAKLVoe6fAShdRtxRseQGUflQE8DVAxKULoghwcQ7of6OCFPRECyXS5jnXo6wRzI80REEAXUQbBgInxROZS6bFoZOFEPaCED2TJGhyYoT8E4Ibw5ueBEOAAmb5ZDA20AAfI+GCQvhFDOlwg/7J+6UsYkaxTEc6AAxrEIAZBAMOJBJDLALSAGy9QaJ0K8gQA4AAHxzxREVzggXbSYKIJ2YEUOHkiU3SjaT15BBumsIOWuvSlMIXpSungBCbAkzpCYEISpsDTKvh0ClVgQx9iSlQ27EAItSBlDZbK1KY69alLFURC69SUUMzgqli9aiigytU/NCKUiWQeC20poRtIIYRhJZ0OhpBW0tFACmTtzw2sgNa2tmcIbLVre94aV/TMta56XQ1eA4sdvkLpr4QVzmAT+xjD8gixjLXLYiPr2BNBNrKTZWxly0rXyEqWnInFAxX6Sp0bfAKwhI3BDIZQUBq49rWwja1sX/sLuP+SyQzImK1ud5u/IRxhCzwIrnCHS9zi8qALUeiCF24aTzH4ohddMK50jQsGq/FECHTQmISEUIVfgpQgN/CCDjhARh4dYgM/0ANzeQQFUwQhNVogKXq4sAl/1MAHdmADaU90BCu4waB2QcQMOJiYG/iDPVLzwRXkyCMbjOGiqsLBFvrjBSPcLQc42Jtlp1CD9yJxhUfAKQ2opKoZ+KAQYthvUo5wBTWANUgyABhp5iJKqQXBE/yBixC2oAViMk8GdCCNE3wgQjngQBPenckN+NDhGYhSOHVRsUxY++TmmVgQpeLJHKTQhhczLwY6MAKr4CILIyAikWBWAyNyfJJAaAL/B6zbX2T8MRonWAGbMoGCGaACjFnkYHRflgEOzqBdjNwACTRIYyJdCwZF4dAIOciCI2RShCzgwAc+CLEQogCusLZIBmtYL0GcsIQgHFGEYJaBGQJ6AB+opmBpELVBbLCGP3RLSOcUSBKaULAqN6/DowBKRSq9CRn4GjLGlu8ciMwaJVIBzxR5pZXImYPiDGQHVMBB9b6c6CbgsyBzyAGRj22X/v3yBnsw9mrukL9T/M8G8I43vAVCBDMEwct2URNBhMCDH8gB0My7NCgQUgVXJ1IHMqgEgwWChCCIEhlkeEQlqLCEilucCliwQRc4oEYMRcIgRziDDH6wsi+3Qb7g/y1DnINUA1RZuyA2MGaVfOCEJBgBLDjHuRGSQASaBe4HhRYIFLIN2lEOQcVH+DPpZFADHiRZIGBweJBysKMpFCJAMqjDP2g89YkdxAZhKEQO6smiICzcIFswV3t+IIMshBghgIgDwCEThAKtYe7lZsM/hEBKFsng7APxYA7yxDIfhK0ieVgEiR/T8iVAG7xLWHnzgnD4MODdHzLog0CiYOEg0eA1FKmDJ3KweAHJgMAHSQSzy60DXKzXEFJvjw5oYCIkXF4Gc3vawtqDg0Q4zfZKv0sQwmDoJRjbDzL4wre/HpaotcFh/xDD7aO5AyNUSQd2EDURyCADNMSABjOQcv9BJuEDHJQhmhXZghs6LoOjD0T6WI/mDQAgedZo4eMXcQIWcNAGrWtkCi6EEUWgPwESC9YVfdNHEHPgBlUyIEGXEGKAcnCBCfUnfJVQEPCHN+j3MOs3dWP2XQMxBXYTIAjHQRmIHbhXEIGABqUnHDngfyD4D1KCB1FjBJRDECeILhv4D3rQee2BBqUQgwLBA7GnKn8QA32Vg/yzgzewQlUSXzF4CX0XIEYAeEr4GCloEH2gBlWCCHaAejxyBQKkJyRxEFdYbju4FJHXcThABt9FCEHQgKeHEGeIeWn4D9xyeatAA4AwUTdgB4THMkZAfHSYgAhxAEW4Gm+QA40wUXrOkIirAX4qVodZeBBCwHRVIgMBdSKOgIlUuIkGQYl3KBCQ4IOFNThQ4gRGgG/lNB0UIYrRBikBgnxPRx07YAeicy41oAW1+H6GmBBcEIfCERkzAH1QIgRkQANZwxpGMAb38osTMob+4Ac/MEUgmASN0GvUI34IGH8WUQRy5w+zhwCAN1GGkG3bMIo4CI0JoQldBgCPB4JCAAa7gBGwaBE20ARRIGtC+Irs2I/UYXtYp3kAKSFhwIp2gQNBVpD9UQRlEAN4FZFDEAMA8IASEhAAIfkECQoA/wAsAAAAAGQAZAAACP8A/wkcSLCgwYMIEQrB4m+Iw4cxrjBJSLGixYsYMxL0QiOGv48gY/yApLGkyZMmvcwAydJfDS8oY8qcKVDMypYfayChyXNmES4YbeLMufMikiw9k/67IeYHBz4XhQ7VefGJChPsqiidCQWADx06BAmxKBUnVYv1TggQZk9Hkq0mizTxgeZjDDeayN40W5QiLBUC+gkoQKIfUrgXbYyRgaPlDEsTKZZteTahDRjCAvcTDI0EPDGIKdpg1KaGR5YxcniqOJllZYQ1FFDbTDuwMBFdQiPMo+PH0I9B+kjeS7nvwSMmCtBeLnjYAd0IxTT+3fFGwtYgXxtkN2w28+bToCP/vEGFxu8YQcJcJ+7aeMEwKr7TfsfriHiEUKYP7T32IHai41Fji2bMUaNADPclhEUOp7UUgw+HGfSfS+4NRIls8gkgwjs2JIhQETLU8NsMcbwlIXvZVfgPE7y8I59gCijiYUJd4NAganKg4h+KABo0jQneMSfACezMaFkNvv0WxA4n/qbdP4ko8GI/BQzzhJEJIeHDjSzR8EaHBE2o3Q3V4EPgcgb+gGVCNwAgw3lBRFGQmO5JoUKQywlgTzL9hSZEERk9oZ9ZNBARJo8UElQEPha8KIACZAQKlEZ5zPBDGGBalAWDQ8WAQ4T/0EnQBs7gWRsvE2AkxAzgrDCFRl8Y/7EIDlRMWhERNIg41Aw4mBgqopXtoAAML2JjAhQXRaFON98woEBGgOBwEw0ynBEZRV1s+ZsMZVj3Dx/AFnXDAyScSRs1zgRhERfeMBCBEkrww0AlGEnB6Ucz5PDDGH0eZAOSv/kThFb/iAIsTP9UAtiLFYhgaEJEBBHNBcQswA8/ShjwQr8I9RDEGw7WgAMlTCZEhw8B/xCKdWkAu8Y/QggDjaMKvELRAQR0s4LFF1+sRDbqimbpeT/kUImvBpUhA5d2+UCSSr/pAJMMGH4nAD76JDRFBtkUs0C8Pfvcqq0HbaEG0y3JQEMnHAuUhLRO1iAEF5KAZbfdODjxBC/YvP8IgzMlF0SEBhHcIg3YYfe8AAMFJHSEDIhSZmMV3hKUhRZoo6eIDQDMEMPnoM8AgA2I3CkfNSZscFAlBFwADs+JJy5NBFYgZAgypgWM2g+SHHIlQbjq2hINQdDyjw3IJ6/8P1V80KK50HQA6EYdXOA14rErTkEKMowXBg1w686S2ls8LNAY2oKkgwyY9IAREXtUgA8Mmj2KAEFMlBMBAxhnn7gS0mBAMaaRqYMU4QA5eJP47MKrGYgBTI/YQ5JmIINRiKFyGOnBBvBhDwEIwBYP8JYNysCPblAAdv7DmBKKcQsBgKYqUvgK2nASAx3gwBPI+ofHZkCDH0TBfCbpwgf/SAANBbzqH2NQwAUMgMIULgAcFyBAE0rClEX4wHML/Aga/qAJQ1UCB01AGkqIsAQR0OAfSYBHBIzRvxRebAENyEY0jDA9kxAhCnKwRBb98YZ8yaAHNnCCUiYChghc4IRu9JkS9ueNwMXkCWXAwQ9m6KAc6CA0DchHE/23gG9cQB1fSMoNqsCr3OnuQVHAYFI0wADsZW8BxMgGBWbQNpoIoQtyyIH4fqCDAipFCAsohit7Fq81ekOQujkCAnzQESU5Ei5NYIA0XjkxBeQmQT2ghA9MaRccmOE+FmAACpVAgQs0YHRGsgEPaKAFOIBkBj64lm6mUAwK+EwaxogAPcQ4/6MinAEHHUEPGDwEj2wsYAEGyEYF0rAmgzwBADjAQS89VIRy3uIF92soQnYghRd66BgKAEBSHsGGKezgpChNqUpVWlI6OIEJvkwQEdbQhStcwQxYsAIWdsrTnvq0p1c4Qi1yUIOiGvWoSE2qUQURhIFiCQYsaAEKpkrVqlr1qlTlxgImuUfx0WAIqhTPDUqQjhCY9axoTata04qCIXTVq1IIK3RuQIF07OOueM2rXvea1xCkwK1vDRgN4mokutqVr4hNrDIcANjADmWwctWNYRNL2b2GgLGOpQ5hZzTZynp2H4ttbGa7tFkPdfazlL2saEf7EcgWtq6orexiuclaf//ggQqRDY0NItCC2FI2ACEYAkBpQNziGve4yC3uL0rroQiwAALQja50p0vd6LZAAik4whZ4wN3ueve74OVBF6LQBS/E9D5MGIEwiIgNGLj3vfCNr3ydEcqeCIEOdUxQIOWpUYLcwAs64MASjGQGZEiBELk1EhRMEQTTaMGj4uHCJvzBqxhwIcHiOYIV3NBMfyCClve5gT/M4w+R4AATv0vnGCLqIBxs4T5eMAKXLCGJLdQSMTeYQg0azDQe2kc3QqCBDmhIohqI4REZvoIauNopGVwBOnOZYQ194AlkwkUIW9CCLhcoAzqExgko43IOuqiUG/Bhx1hcoHkwjBLhUjL/JPAUBCTOa5I5SKENTBZfDY0wRcTIwgg6eHNIdBAEKoBCJoHQBA7utUAK+oOhTrDCM2MCBTPsRAypiZyDGBMM/l7kBkigwRUFDRLiggFQNsiBEXKQBUfIpAhZwIEPfGAfIUSBWl2FAw5ksAY6H8QJSwhCoLNYQxmYIYf/OIC29JUGX1tmDX+QVgyMPZAkNEFfpC5xDXwwBEJYBNabWNoeKRgDCM8hzCW2IRUmzaYq+GObDcrBEQWyAyrgQHh6FnUTPD2QOeQAZdn2B/mAeIM9iBskdwDfKR6mvOX9gwhmCEKeP+KbAgqBBz+Qg6ZbIutDH6QK6Vvg+iqR4oEgIQgz/0QGGR5RCSos4eUwpwIWbNAFDmQOB5EwyBHOIIMfgGyBMWgDhP1bBkZ3qgYMmjdBbMDLgPnACUkA9N3sZoQkEGFQlPlBfgcCBXvTloY5AKvjcqDpEPEAiAQBA8o7lYPaTaEQ26rDP6LM9jMgxAZhKEQO3DmiIJS8bHFA2w9kkIUfHwQQcUDUDIJgqDUgSgZsgBlRRySDvysKgSR2kA+eU5E8LGLIrsnBEtg9kBssweghCQLnw/B44fwjCjLuFA1WQ5E6eMKSlJHBjQuSCHQLXAe4cPY/DLH2/dAATEh4vPuON7Tf4CARFbFB8slul/RgxPRL84MMvsDvgtigN+dpA//BfrWt5f9jB0YImA7sIPyHk0EGaIgBDWbA5oFMwgc4KIP5K7IFN2ROBmJXE8pXegCAenahBTl3EU6ABTjQBnKnEVOABO0nEEUQPkMRC0gzIX9EEHPgBgGDJFsnGUMHF5hggCUWBPRyKOVXEAjgf2zXZ/1FEFNwNlGje3MygAQRCGgAekORAw8Yg8dTA3hwHkZQIRq4fwKhB7E3FGhQCkAoEDxQfA7yBzEQVkdoEDfAQwHzYEB4CZP3G0ZgeeQ3FBtoEH2gBgGDCHawewlyBTbSKT6ABdGBgwVheiboKZGiUYQQBB9ogzuygodngS2xCjQACA11A3aQeQ5iBOoxh4DdeBAHIIUs8QY50AgNpQeS2CX0tx6PaBBCECIBIwPI5iGOAIpgOIpNQoZIWBCQsIQ48VVsCBdOYAQT101lwBp0eBA3UAOKyBLah3b3sQN2ADk3UgNaAIw32IkHwQV86BiQM35GIgRkQAN1YRdGMAZ6oYwHcQhv+BF+8ANkgIwzkgSNgG0/UANsdoUVUQSJ5w86QAMIIIYNZQj2tg2r+IeqeBGagGcAQHr9JQRgsAtBkYuW0QRRMIFPOBzamJC6kXzb4noMeR9hUIsfgQNeFpH3UQRlEAMPAREAEIIeEhAAIfkECQoA/wAsAAAAAGQAZAAACP8A/wkcSLCgwYMIEdrAMmOIw4cxsDBJSLGixYsYMxJEIiOGv48gY+AQo7GkyZMmvcwAydJfjh4oY8qcKVDMypYfZcCkyVNmES4YbeLMudOik0Q9k/67IeYHBz4XhQ7VebGIERxWniidCQWADx06BAmxKBUnVYtXcNyhIWhLka0mizTxgeZjDDeayN40WzQhFyN3Ps6wNAMp3Is2xsjA0XLwRIplW55NeGMGDZZ3dMg4pPVwQhuM2tTwyDJGDk8VI7OcjDCKGtItadAA6vlgHh0/hn4M0gfyXsl9DRLBUUP33R21EYphrJtGjBsJVYNkbRALDtilcVRKjvAGlctDYwT/CRP99+rgBEEZ0e2vRg4i3BFCYT4U99iD0ol23wMep3ge8SWERQ7YheRDFsqZNx16Ao3xmm4/1ABdgAcVIUNxQ80QRxL4KaifQYEQx54aDFIoUBfXhScHKh3qRp1ACPhQoF04YGHiZzXkplsQyBWUnz8vPqEGezPg8NaNCCEhY3Nv2OCjh0AGd8MQMrwRXhBbIEkZADIYF0QUT7oYnB5GzPjRDzo4WZsQR170BH041UADfAP9yJoQF+p2hxE9XnSEEyXlMcMPYahpURYEhocDgnVCyVowS/qXwxUY2dDEOxbQhtEXRiyCAxWaUkQEDRjiVCSHNTlaVBJuwKHbDD48/1YREt44Aw0+9WQECA430SDDGbIm1EWkZpUxIR+qCnQDADkE5h9eFr1JQgcC9NOPMKlgJEWiguXwwxj3KZQje0FUIZAoyf4jSpm66UCDoQcJcUUFw2BTbT8CVFBNHhb1EISVpdWAAyV9HkSHD+z9EAp0aTjKxj820KCDcWoYQlEaDzhjwb3W4mvLEhXZMKhxP+RQCaoHldFReD5A8o9KLhLyDxhumGmaFAk5wcEwwnDcsbXNvAMFRVs8yB6QNHQSLkFJ8KpbDTUIUYcWYFVddRBJCOG0bm4cEe8SwpwAg88/49sBBgkdIQOULQkcQxUTEpSFFjYHoYgNAMwQw958z/+whA2RtGGzD18cxMMHJrxDdtkd2wMGQoYgM9rRIf0gCWcFjVoqSzSUC7ENoIce+j9JDJHD5h9pxi9BPbAzjAiLM45vASq00l0YNGxNeU40bEFng8T6oxkmJRokRCQ/dBmSEUgQRMQQHfCCr+xlCwADCcLsAa9BRRyQg/K7x1DkDGKo+cgeOs4gwyhixI3REa/IkFsMMlAx4Q1gCGBCAbEzLoA9vEBH8QryBCl8xUz+0QEOPDG0f/jLMj+Iwu9MsgMq5EAHRvDaP6owARPYo3/Ve8cJqhGJkjBlET7Q2+4+goY/aAI+lcBBE1AWEyGMgQYAYkIN8EGC6VGvY9bjRQX/PDFBjRAhCnKwxAr98YYZfK8HNgBUUuADCXwMg38//JkAhEECTjRQJk8oAw5+gMCWmEYHnimACaiRRSBC4wQPAFBPblCFIk3uaDHwQRTcl5Ql8AKE1hIANnjxDgQsrSdC6IIcckA5NG0vKTb4X/+q1QF8+ICGcDlCjJyzo4LBpQs9lF2+TkAPUVCoB5TwwR1pZIb4YAAfPhOk2A7wyOTYgAc00IKrBBOr+EBBBAUIZD/w0QEZaFBLRTgDDpwjnscFaAYnEMD/eIGBKWjJIE8AAA5wkCYKEaEAJyBBNeR4zYPsQAokMVEUJpCXnjyCDVPYgTznSc961hOedHACE2rJ/x0hIGENlWhCFs7whYJ+4RUFRahBFbrQM2SBCbU4HdQmStGKWnSiggiCM28EDweAABwgDalIR0rSkEagA2RcIuVoMAQ+cucG6oiANBrQgJnWlKY2tSlOacpTacyUAkNQ6Uql4NLk3IAXEeCHUpfK1KY6lakNMEdQhcoeGhD1RkdN6lO3ytWoTpWqQ7FqUWuTVa6a1aleBWtzrmqisp71rfxIq1pxIlasIhWub5XrXDnHVgq5Fa9dNccq9+oPPNgPqyrQKmC3qgRpDGGZsomsZCdLWcn+oq8UcoZHQcDZznr2s6DlbDQiYI4jbIEHqE2talfLWh50IQpd8AI/k0MEHf9MYAQTgIdud8vb3voWHg/oQlKEQIc2BegIHEhnOQ1yAy/ogAMgM1EDWJCOBxxzuf+AgimCMBotKJc7qGDBPlzgAWVYYrbxOYIV3MBJfyBiBoc8jA0CkI4ArCMALfCAAZqgpcRs04w4yBJ32MGCAOzjwOvYhwS4AY1QGXUKNeDujCxzXbg4oQUoSPCBDxwAa3gABeWI71aOcAU1pDQ8MqBUbczhAQNv+MUBgIAHLtAIzwhhC1pg5O5kQAfPNMEDIXixkPexjnUsWAHWTMoN+BBhFe7uMmOdSQq44eIhw1gZHoAAPYwbkzlIoQ0nplwMMMjfwyiABRCospU3HAAUsMD/ATaKSSA0gQNu7U59/kjDP5xgBU/GBApY0IoGAiABF6h5zfddMAHIY0Ik0CCFZYwNDcDwFhvkwAg5yIIjfJIFHAQhB2PhggXSIQEirxnGIfBAOrzBZYo4YQlB0EGkQ6IZM3zxAEvyVhrQq5A1/IFXptmOQL5gDgmkWcOn3kcAXMCCFFDBIkXIwiZWtkL1xeC7c0CYXRRIBT9Tpgr+UCVscCCzgdDAAdwwdLIRTF8PvICcBplDDhA26+n0boI32AO1P7IWHJyCTqITnUCIYIYghPlMM4BXEjIAAQmEANmnNrAHPCBsg1QheEfTTCU6s5EgIBAZZHhEJaiwhJKbnApY/7BBFzhgMxwItyBRUEc6WmDfdSubBezoThnsHB73xCDJBbEBmtjjAyckwQhWs5oRkjAc9uSo1f9YArrVHXEJpEDEAjlCDtgGpBrwoIgDAYPHw5MDK/xjCoVwUR3+MReb5eAMCEnCCFDg8ENvONVmJ1oczJS8LFSYIICIA5RmEAT4rMFh/xDC6V4lA44bxAsKkEALiizkAHggARbJwyImxhL3LMHbA7nBEngekiAcQCBhcFRv/hEFdvmHBqihCAAYwA0UVHkddJdiRRKh7ZzoABe8NsTY6/MugSAhXSLT0VBwYJiEEIEdLpCAMgwcABboAyOi74gfZPCFYCkEN8Zpg/+5UiWmgexgPe2yA6//sQN8SKC+6XDB+gcyCR/goAwDJMgWaobiljaq/MrCLDajBSV0EYdAAdzAAtGVEVOABPP3D0WgOzgRCzRkJ30xB27gdD8AdQiBAdPAHZhAenYRBBVHflMRHAjAf5JSZtg1EFNgNDihGYdkgQURCGjAeUORA2vXghBTA3hgHMxjEDRYEGSCQGhQCjz4DzwwfGb0B88hhOlCEJXRHzjhXS14CYunG0bgeP93ggfRB0OiG4hgB1hHIWkxOHEGhQBYEKIngv4gEmSwXIQQBE4nA1g3hAaxK1CyCjQACNd0A3ZAhaVhBIzWIl6IEAfAhCzxBjlQY1rNogeKyDkzEGV4aDx54iJfRCGOcIlDYQSZqIaHiBCQ4Hp0NQRleBhOYAQHRyNlkBpReBA3ICe6sX1gxx07YAdrgx01oAW1SBCVeBBcQIeNsTbjhyRCQAY0UBd2YQRjoBdrmBCHkCIf4Qc/QAa9SCFJ0AjeEgMREmVdyBfQJnjCQwMIwIXLZQhUgAPbkH8mCI4WoQlgBgCgt1xCAAa7EBSv+BlNEAUPmIQJ8oz+mBzH5yKrF5DcEQar+BE40GMGyR1FUAYx8BAQAQAcGB8BAQAh+QQJCgD/ACwAAAAAZABkAAAI/wD/CRxIsKDBgwgR2sAyY4jDhzGwMElIsaLFixgzEkQiI4a/jyBj4BCjsaTJkya9zADJ0l+OHihjypwpUMzKlh9lwKTJU2YRLhht4sy506KTKj2T/rsh5gcHPheFDtV58ZIrH1aOKJ0JBYAPHToECbEoFSdVi1dwxJDxQxGRrSaLNPGB5mMMN5rI3jRbNCEXI3Zr4JiBFO5FG2Nk4Gg5w9JEimVbnk14Aw4NljF05MCSxDBFG4za1PCIOYenipFZTkaoSA1pyTKgeEaYR8ePoR+D9IG8V3Jfg0Rw1MDtLwjQ2QfFLMZNI8aNhKlBrjZoRe3QGHEqIUd4g8rl60HCQP/vrfo3QSekiNfIEWg7QijLh9oem5y8dPMCb+yRgTtGEB7uJYRFDq9h5kMWCEVHFEKZGFEgSzTU8FyABxUhw3BDzRBHZwYp6M90AgmhBYZDBYEfhQJ1YR1OMciBSn24gfjPXA/ahYMVKCZkQw234RbEDh3at2BBSQCG2ww4vJUjQkj4UONHNLxhQ0EeTnfDEB2Bt8WSlAHAH3hRUCnkh7+l4SBuP+gw5WxCFJHRE/HhVAMNStY05mpCyKADcUYAiRERbmqUxww/hLGmRVkQeB0OCA5UZV9nOHldDldgxFQNNTyG0RdGLIIDFcdVRESER+LA4T+PDnREEHAcyYkjF03/AoAbmlWKESCDQSnDGZom1IWkU5UxIR937nQDADncAV5eFV0CRg5ffrjbRVIo+tEMOfwwBn0K8UhcEIWJUqxAfJwpnx+HHmRDGD8M9toPQ6SLUA9BvNFSDIJR4idCdPhA3A+hPJfGnWz8YwMNiPSnRmHvMULrg3fkAElFNhDa3w85VHKqQWVkyaIPE6sUI0xkBPFkDDlIkVARr+DQHG6YBorQFq4RlxMNnXBLUBK5DoWpEHVoAdbQQweRhIhj+uODVgYhRkMONvuDsnYIHSFD0iwJFkMVExKUhRYnB6GIDQDMEMPZaM+wBGIcnOzDFwf1QEUco0UN5YmGIFO33TH8/yDJIU8UNCqJEIJrsA2IJ574P0wMIdyDOsiQR0FHNBIHHk/6jAxJB90QBg092/0hDVvU+c8YwH4UOSYnNj0Gxi0ZAdVAQiQGteg3d9F1hQdAi3sMSM4gxpqP7NHjDDKMIsbuFzHxRbZvrLXEhDdM4U8cq2SO0w8yZMG0RU9I8ZX2mOmAgyey/UPvDDT8EIXpJckttBFzCPREKz78QH7WOQyxr6ViWIQPzIY7NPxBE2+pBA6asDGU2EAPpPuHEDohg2hF7Q7Y0sEadKYRIkRBDpbA3RuwpRMbOEEpb3GCYggoOhrIAAy9QskTyoAD/YkOZTrwzAxSZ7PM5KAUrTPJDf+qgKS9EScGPogC83oyhttFDVs18IK8eCKELsjBiWhSk2dsEIPvEMeFB5CZYY6AAB+8rET/gwshciAkH14hfe7pASV8YESp4cAM7qmEtUCCLTgsL0c24AENtNCqa/kghoYpAqmkQwMEckkgRTiDy84WBDBQSEVnw5jGHlmQJwAABzjQYoAq5gMZoI+TCNmBFDhHoT5YYQpJeQQbprCDWtrylrjE5Szp4AQmTNE9NpgCEsAAhi1E4ZjITKYylbmFLRShFjnAlDSnSc1qTlMQleSSDlRQgQJ485vgDKc4vykCeNgQdzajwRCWiJwbPKAD/YinPOdJz3rS0wJDQGfUaCD/BXbO5gbwEIY9B0rQeGYgn/r8Yj9zBFCBFvSh8zxoQhXqT880FKIY7YdEJzoUflbUMBfN6EM3ytGWeJShARXpSBFaUggtFEUhVelAM1DHluKBCh+Fyw1G4FCZ1pMa2HAcDYZK1KIa9ahF/cVLUTQBBVjgqVCNqlSnGlVhZOAIW+CBVrfK1a56lQddiEIXpMglISBADqVsH1LXatQ2sJImQqCDGN3DhD2kEZX58YIOOLCEHJ0gAAbQACIfCQVTBGE0Wngrcr5QAiVQ4AIN8MQvKXQEK7jhjIiYAQcNY4MFFEMJ/FiAAS6ggi0tCTGgvBcOTIscSZRgAfyILWiNwYAJ/wQuQNWrwWFrxL7vGSYJxVgBaGMb2wUQ4wLgEMt2jnAFNZyTRTKwlWfe0Q3YEve6CwBBPhJgScMIYQtawCJxZEAHz0QBstdNLz+UoIQI3OIDdVDKDfigWxbu0x85RckLbmFd9WK3ARcAATLgh5I5SKENz+2hDozQBM9MoATR6K9/ibuAFeTDHMxCSSA0gYM9PpE/afiHE6xwV5QsAQQY+MceXsAACgx3whSOQDawwbCM3AAJNBjg/kAyVDC4yQY5MEIOsgCrmKSBANzwAAvEkwR4FCMC0ngxjJXQgFtEYAMETogTlhAEHexYapEzAxwPIKlspWGyFEnCA1rAjRAEQP8CKxjIGCzAAANIGMYLoEA+XoAAixQhC5vwmN2QF4O3zsFfdjEfFUqsEA6swwMuCMA+Ju0BRBDkCuZo8Z39qwTPdqMCXkjIHHLgry+PrnQE0Y+g/XEH0J1CSYpTnECqUAwPtCAA65j0PtbRghCIkQnTMIAxGiDlCYM2GxcYBEKqwEObRa4St92IyXCDDDI8ohJUWIK2t02FLNzAHiwIQa51PekAeKAaBvECNSJggGJPeAEl8AF3yuBhFq0nBrBsWpqI4wMnFIloRPNBID0QAnLreh0oaEGJg0GAW4Bj09iNwAvQfAQ22uxCPMjyP8AwbRblAEdTKESMOtMOD0ja4Pv/CAA35IEQJrRhBQwg9oSlkY8wUWQLcXgS97yXEEDEYUwzCMJb1nAnQvwjERJwAconbQ0JHCAhU/hABD5b7AV0IwMWycMi9sS/JTA6P0uot12C8PR/hOFOxxEGC05u8DdfoCJnSAADviFhcESggQhJBKJzogNcoFkghug4TnRAgzUhoegCYYILWjBugz+aAxURAg0oMGzQwhvyF7nBEjriBxl8YbAFsYFt+tMGhqVKIDhgQePJvQ4I+NooI4hABDxLgb8XZBI+wEEZgkiQLbjhZDJYp6PGlZ8SSIDt5Db3BzACBhPcogSNyogwbT+QIoQOJ7HY2OkFcgaCL30di8/3/0V+8IPtYELsUgsC1YY/soIswORLVzkB8FqQKdRMPjLg4PYFMoV0oGD1uhYC3IBH9GcwNYAH/WEESBAk7VcQD7B28ScBJVCA/8ADgocZf+AcDDgV5kEE1sB43+cByEB/lxBNfBJtBLF/A0EDqvd9EOACvsUlaeE2WJAgxFcQN1AC3IB8umZuFYBKhBAE6pF/NtiABkEG3GANS7cPLiAB4sElN2AHXnQvRvCEMMKBCaEC8IdyKrcAj6QHFwghM1BRKkgQUOB/ADhpAogjOeIIF8IncHSFfEER3gCBXJgODhCD2+EERpBgNlIGqHGDB0EELpAOPLhrECABoZYjO2AHV5RTIDWgBRrHflhIEf7gfT3YhNbQBo8kBGRAA3VhF0YwBnphhAkBAju4ayGQDhBgAeL3SEnQCNnSNxJSipVIEWNAcAEAAenwAmdAgf9gCFSAA9vAe3ZiilnIAi1wATUAjLQDBrsQFIKYEExAABYAes5oi3OYjdtxeDEyLdw4G+zyJDhQXuE4G0VQBjHwEBABAHOFIgEBACH5BAkKAP8ALAAAAABkAGQAAAj/AP8JHEiwoMGDCBHawDJjiMOHMbAwSUixosWLGDMSRCIjhr+PIGPgEKOxpMmTJr3MAMnSX44eKGPKnClQzMqWH2XApMlTZhEuGG3izLnTopMqPZP+uyHmBwc+F4UO1XnxkisfVo4onQkFgA8dOgQJsSgVJ1WLV3DEkPFDEZGtJos08YHmYww3msjeNFs0IRcjdmvgmIEU7kUbY2TgaDnD0kSKZVueTXgDDg2WMXTkwJLEMEUbjNrU8Ig5h6eKkVlORqhIDWnJMqB4RphHx4+hH4P0gbxXcl+DRHDUwO0vCNDZB8Usxk0jxo2EqUGuNmhF7dAYcSohR3iDyuXrQcJA/++t+jdBJ6SI18gRaDtCKMuH2h6bnLx08wJv7JGBO0YQHu4lhEUOr2HmQxYIRUcUQpkYUSBLNNTwXIAHFSHDcEPNEEdnBinoz3QCCaEFhkMFgR+FAnVhHU4xyIFKfbiB+M9cD9qFgxUoJmRDDbfhFsQOHdq3YEFJAIbbDDi8lSNCSPhQ40c0vGFDQR5Od8MQHYG3xZKUAcAfeFFQKeSHv6XhIG4/6DDlbEIUkdET8eFUAw1K1jTmakLIoANxRgCJUSBuapTHDD+EsaZFWRB4HQ4IDlRlX2c4eV0OV2DEVA2FBIrRF0YsggMVx1VERIRH4sDhP48OdEQQcBzJiSMXqf8CQBA6aNFKRoAMBqUMZzxGUReSTlXGhHzcudMNAORwB3h5iZpKDl+6RAhGUij60Qw5/DAGfQrxSFwQhYlirEB8nCmfH4ceZIMXP/gww2t4DDEhRT0E8UZLMQhGiZ8I0eEDcT+E8lwad7Lxjw00INKfGoUh5AQjtNaIAysV2UBofz/kUMmpBpWRJYs+QPKPSjHCREYQT8aQgxQJFTGIDx/LWUOdB23hGnE50dAJtwQloetQNdQgRB1agGW00UEkIeKY/viglUE2rIHGYk/alUMTCR0hA9MsCRZDFfMOlIUWKQehiA0AvBvD2mvPsARiHKTswxcHcUGFD6PhfB9ChiD/k7fe/sTwgySHPFHQqCRCCO7BNjTuuOP/MDGEcA/qIEMeBTGBgA/NAR54DduQdNANYdDws+cy0LAFzWME+5HlmJwI9RgZt2QEEgTZkEkOcQKeAw1jhG1QEQdA63ngSM4gxpqP7NHjDDKMIobwFjHxRbZvrLXEhDfscAfeVeNreq8YPSHFV+FjpgMOnsj2T70z0PBDFDSX1AMVRRvxdBKf+IBH+iGpgQ9AVRKmLMJdAAQJGv6gibdUAgdN4BhKbKAH1f1DCF3IQQ6OFwMk/SAN6dIIEaIgB0sc7w3Y0okNnKCUtzgBDQg8ngwkAQZNxeQJZcDBDxIYuBzowDMzcAMP/zODAwC4jyc3qAKS/kacGPggCtTjyRp6N5Q7LHF5cMGgHDaIszSFMCk3WEv6ZCADXdRvK0fYXOdKxC/DwKdVLGqXGQwXoB5QAnyYwYEZ3JOFFYFkBpyYAS2iOBsb8IAGWoCjP2bgA1/NhggXYgm0yMCzHBXhDDhojn/AQCEeOElwOKjE07hEkCcAAAc4UBOFduSDHAwhF6RMyA6kIDoKQSEctaTJI9gwhR348pfADGYweUkHJzDhi+6xwREmMYUpsEGY0IzmDoRQixwE7ZrYzKY2sSmIIHBySYowgiC2Sc5y+sEKOzye3mggrxx1p0fqJM4ihhBPnNFACoT0zA2uAP/PeuLEIf5kDj7dyc+ADgWgBm3JPfNpmH32M6H+QChEoTRQFDl0oiCR6EQXStCHJlSjEOWoRQuK0YgyEaJ4oAJD4YIsjwa0g5OjgUxnStOa2pSmv6goiq5ghJv69Kc0kMEejrAFHhj1qEhNqlJ50IUodMELyNyODaowhqVa9apgoCNPhEAHG7qHCFnQaiwLcgMv6IADS8gRPBKAj1l4NZZQMEUQRqOFXCJnDQoQQAFMgA1NRDVAR7CCG9aIiBlU0jA20IYwBNAPAdjDBPTA3ZIQg0p84WBL2zFDXvvBWcbi4wQ6cCRybjCFGsy1RvEbpWGYIAILcPa1jcXGMN5Rib//9uQIV1BDOq8jg0rNZhomoAZsYSuACpjAG17wjBC2oAUu6k0GdPAMEoYBg+FaVwAd4EUsxEqTG/DBtO/y3GVWipIM8IKx1h2uALBxggqU4bAnmYMU2rBbvWXGCFgzTCEUAA30ppe4FlDAB8QTk0BoAgfWAhz0/JGGfzjBCm2USRac4YN/fCED+MCGf//bWWGcQAOhysgNkECDGIqXBjU8WA6MkIMswComdMDGLbqRj+QyQQciEEZjOfxaAcDgBMJYwhkT4oQlRMxzmZGBGY54AEllC4QmYQI6ipENaSwgAgpwFAZsUYENc1gA7zBBBsJUkSJkYRMx0xv0YpDLOfzL/y7ro0KEP0MFfnSDAgvgh54ZUAqCaKIaJCiAl/8rABEMAwNTSMgccvAvHn5IdTTTT5rvYLom0IcImM40pgXiBBXkwwB51jM/lBANadiwCOOoQAdgMOjr9oMXJ1gDQqrgOr1ZrhLc/QcSUIYbZCSiCNJwwAWGTWwHUIAIGkjBApQgalErgQHsMAgd0CGMZ7TautRQwK1GV4YEX2c9MUg01NJEHBoIAQwsaAEE1s1uCLDgEFOIgDSa3WwKgAA/PPgACd5x7c52IAN/PUIOuHYhHgz5H2DgNYtywEkpQCAE+4i4xEMAgW38IwPZCDW9F2AMaiCkCJ54Bz5Y/V8YmCC5FP/ZQhye9AMZZEG1BQFEHMY0gyA8JwgogLjEIx4CFMDjH08wBgXoLeoGRIDMB6lDGzpgj0ELYBgWr0geFrGnruVgCXMmyA2W4O2QeFMgMnj4znmOgmkIZAIl0HizlVAMdVSEB97AhwU2/I4OiBYhiXhzTnSAC9v+wxAKx4kOaDChGoh97D1HR4goYABmE/3Zi6iIEMyAjVUzVgAKAIClltARP8jgC3eHmm3604aG+ePwO+951P8BgBI4nt5KAIGpLZIESXRABIXGht8JMgkf4KAMsivIFoTI23YK5PQ6Tz0KNjCQG6jDGGp3NrQxsgZ44EMBANLIFJCwe4EU4XQ4iQX/x5A/9n30nPkD6cIFGkB0Pds76wixAo6Qg4mu2yUI2iEI+RG//III4wLRp2ccBw1jZRBTcDPyIQOVtH/Kh34DAQXFAA7txw/SYAxnUIADsSN40B+3YxAMOHH9VxAakHbtpwQGQAAYKBA8EHiY8QfO4YGoB4IOOBBEQAyNN4EMMAMYeAnWxCe59g8fSHYzOBBSkA+vt3YgQAwwtyRpITdYgBBBaH4hSFYEwAAByA8LwAAjMFaEEATqoYBQGINCiBBhcAvEMIEUUAyStSQ3YAffwSJGQGAHEYXnlxAf0A1XyHEkQEp6wIIQMgP5RIdTaBBPEIETKA0R8ApL4giRhBtGznBEcyiGUjiEBbENJPh4BmAOS4gcTmAE9RUSv1cRgkiJBCEEaXiEemaCxQB/s7EDdrA1BVIDWnBwAzGKFWEF+QB7FBABxEAFpCQEZEADdWEXRjAGFmGLFaEAt5BnSiANxRANEwCJXJIEjZAtgiMhxyiJdYga2dAAsVcMIpB9KWgIVIAD2xB8taiNg2iHDmAA6rBHKViKYLALGIGMogID8PBW8agR9riP2zED6qgB/hggQSAB61B+AZAOPzeQ21EFEbAOKRCREhkA3bCGSxIQACH5BAkKAP8ALAAAAABkAGQAAAj/AP8JHEiwoMGDCBHawDJjiMOHMbAwSUixosWLGDMSRCIjhr+PIGPgEKOxpMmTJr3MAMnSX44eKGPKnClQzMqWH2XApMlTZhEuGG3izLnTopMqPZP+uyHmBwc+F4UO1XnxkisfVo4onQkFgA8dOgQJsSgVJ1WLV3DEkPFDEZGtJos08YHmYww3msjeNFs0IRcjdmvgmIEU7kUbY2TgaDnD0kSKZVueTXgDDg2WMXTkwJLEMEUbjNrU8Ig5h6eKkVlORqhIDWnJMqB4RphHx4+hH4P0gbxXcl+DRHDUwO0vCNDZB8Usxk0jxo2EqUGuNmhF7dAYcSohR3iDyuXrQcJA/++t+jdBJ6SI18gRaDtCKMuH2h6bnLx08wJv7JGBO0YQHu4lhEUOr2HmQxYIRUcUQpkYUSBLNNTwXIAHFSHDcEPNEEdnBinoz3QCCaEFhkMFgR+FAnVhHU4xyIFKfbiB+M9cD9qFgxUoJmRDDbfhFsQOHdq3YEFJAIbbDDi8lSNCSPhQ40c0vGFDQR5Od8MQHYG3xZKUAcAfeFFQKeSHv6XhIG4/6DDlbEIUkdET8eFUAw1K1jTmakLIoANxRgCJUSBuapTHDD+EsaZFWRB4HQ4IDlRlX2c4eV0OV2DEVA2FBIrRF0YsggMVx1VERIRH4sDhP48OdEQQcBzJiSMXqf8CQBA6aNFKRoAMBqUMZzxGUReSTlXGhHzcudMNAORwB3h5iZpKDl+6RAhGUij60Qw5/DAGfQrxSFwQhYlirEB8nCmfH4ceZIMXP/gww2t4DDEhRT0E8UZLMQhGiZ8I0eEDcT+E8lwad7Lxjw00INKfGoUh5AQjtNaIAysV2UBofz/kUMmpBpWRJYs+QPKPSjHCREYQT8aQgxQJFTGIDx/LWUOdB23hGnE50dAJtwQloetQNdQgRB1agGW00UEkIeKY/viglUE2rIHGYk/alUMTCR0hA9MsCRZDFfMOlIUWKQehiA0AvBvD2mvPsARiHKTswxcHcUGFD6PhfB9ChiD/k7fe/sTwgySHPFHQqCRCCO7BNjTuuOP/MDGEcA/qIEMeBTGBgA/NAR54DduQdNANYdDws+cy0LAFzWME+5HlmJwI9RgZt2QEEgTZkEkOcQKeAw1jhG1QEQdA63ngSM4gxpqP7NHjDDKMIobwFjHxRbZvrLXEhDfscAfeVeNreq8YPSHFV+FjpgMOnsj2T70z0PBDFDSX1AMVRRvxdBKf+IBH+iGpgQ9AVRKmLMJdAAQJGv6gibdUAgdN4BhKbKAH1f1DCF3IQQ6OFwMk/SAN6dIIEaIgB0sc7w3Y0okNnKCUtzgBDQg8ngwkAQZNxeQJZcDBDxIYuBzowDMzcAMP/zODAwC4jyc3qAKS/kacGPggCtTjyRp6N5Q7LHF5cMGgHDaIszSFMCk3WEv6ZCADXdRvK0fYXOdKxC/DwKdVLGqXGQwXoB5QAnyYwYEZ3JOFFYFkBpyYAS2iOBsb8IAGWoCjP2bgA1/NhggXYgm0yMCzHBXhDDhojn/AQCEeOElwOKjE07hEkCcAAAc4UBOFduSDHAwhF6RMyA6kIDoKQaEMtaTJI9gwhR348pfADGYweUkHJzDhi+6xwREmMYUpsEGY0ITmM4VQixwE7ZrYzKY2sSmIIHBySbAghSC2Sc5y/qEROzye3mggrxzdwBPRUidudDAEeeKMBlIgpGduYP+FeNqzJQ75J3Py6c5+CnQoAT1oS/CpT8Pw058KTahCQcLQgkL0oBKdqD8qiqKHahQkGZ0oRynk0Y/6YwhMnCgeqNBQuNzgExf9ZwcnR4Oa2vSmOM3pTX9B0BxhARk6DapQTTeEI2yBB0hNqlKXylQedCEKXfACMrdjAyQ4talYxSoYJCgTIdDBhu4RgiHAGsuB3MALOuDAEnJ0hW1oq5KxhIIpgjAaLeQSOT1wkmDsALayHsEKblgjImYAV5du1C4/wAEmJsElxKASXzjY0nbC4Lqc5GB1JJ1CDehao/iN0jBE+EHi7LJEJEw1KUe4ghrSeR0ZVGo2CPAjvnTgA0//sNAwQtiCFrioNxnQwTOg4C3OZJCDA1xCKTfgw2bf5TkawKGlKBmCtfSGJB2AkCdzkEIbWKu3zLSBDJ7pghv25LnMuIEKRzxJIDSBg+lSlz9e+AcjKACHnqwBHqeZwn64hhlENsGRlkICDWLYXBqA4S1H4AYLuKGO+MbECRo4wTBMQJLc1lSdcPjdGk5rECcsIWLltZwZjpgADwQgBNyAwAgAfBEiAEAYJ4ABNUQwgoE8oRJ6GqIATbGbihQhC5uI2XtjkMtBeCAE+9hHAFDgAQfMICOPOIAAnPEOAfTjysJolECqQImtcdB0CJhDQuaQg3/x8EOqo5kNUiCBACR5/x/rCEA6PEAAPwnhzni+s0COQA8F2MPKV+6HAKDRDxti8AffOZ4WcBCqglShsjizXCXoSBB2sMDNb07yOvbBAgUEAhoESIA6RC1qAjijCFSQhwAAHWhB26IGBklCFuTHQVdAZXRlcC+L1hODKRwkCRBAwaYzrWkWmEEMJTCAspet7BKAwQnCgEGrW10AaKR3IPeLJM7WYgp9HiEHXLsQD84oEGeYmNhJDgA3IvAPTURDGvyIt7ylYYDTbOAErG61AISBDoQIYQ2W01sQGEuRLcThST+QQRY+W5AucMMa6E5yCFgQ3z2sAN7yjje9n3wEfBRg2oGGgQjEgxAmHIDWIP+jW0XysAjygmQ9S2ijQW6QDwkMm9gBYIE8BAKAb2A84/QegkD8oABqgFzQ9nhARXrgpdGup7AGScS/pKMDXHD4H9u4dMTXAYEWBKoMPs+4xg2w1gsWwB7MOLoA8IGFioUhfjfxTxostYSO+EEGX2Dx8FAAgZtnOufIGIgZwi52egNgIAdQQL5bnQwYkHV4YKDB/yIE3YFMwgc4KIPsCmKPc6Nb3Q6Y1xUID3Sym/UB+Fj8lQXQAVhfhAtXkIFxSjIF02LEC9xwQcT3MXHwDmT0P5+36R01DGkfvQDJaHRFwuDg2USAG5jOdJxZ8IKCAF/s/KB32QfCjmEYHeT7xkD/WQ2SAxb4/c3rQIEEKC2Q6xd++DYWxjuO3g8YCKML4x8IEVzQgvMXW/zWR3rCt30DQQnOoHpI9wH5JxAZ4Hk412Zf5H6lR4Ahgg1/Rn/4gCPjJwa553+8xwKncBASOIAHcQDOQH/9YAEwoHcoAgIO+Hce0AAIMYJjR4H58QEkgIBr5wNlNQTmt3XqR3AGQYPZB38FMQW8gA30Z4G+xiV5EALpEH1/xwI1NoMCWIMJgQwmoIPCAA+kNAJa93kSYA2nRYTalzUiYAH0Z3+RsCR6kA66t3UsUAYUYYZGaBBLoHhqVwHVwIKegQUsAAFSmG4eUAwVYYc2SBBCUAAioHrauQANIqB87iED+yABLiCFLsANMjeEV1iEiUgQnWAC0yYA2CACBXAGpMQFIpAO6QBnSsYCCniInXiGFTEBvGBlAgAD9gANfsB+XHIA0iABgtgCKEBuARh8WLh0J4ANg2YP7HBrC+gDKeABLEAFF4GIF4EMClABD+B7CzgQUDAMAoAR2GgRRKABOmCM30iOs3iH6zgbYIeMRWiN7+gee1AMSoB9ShABNFCP7jEF8rAALzCQBLkA6rCJFBIQACH5BAkKAP8ALAAAAABkAGQAAAj/AP8JHEiwoMGDCBHawDJjiMOHMbAwSUixosWLGDMSRCIjhr+PIGPgEKOxpMmTJr3MAMnSX44eKGPKnClQzMqWH2XApMlTZhEuGG3izLnTopMqPZP+uyHmBwc+F4UO1XnxkisfVo4onQkFgA8dOgQJsSgVJ1WLV3DEkPFDEZGtJos08YHmYww3msjeNFs0IRcjdmvgmIEU7kUbY2TgaDnD0kSKZVueTXgDDg2WMXTkwJLEMEUbjNrU8Ig5h6eKkVlORqhIDWnJMqB4RphHx4+hH4P0gbxXcl+DRHDUwO0vCNDZB8Usxk0jxo2EqUGuNmhF7dAYcSohR3iDyuXrQcJA/++t+jdBJ6SI18gRaDtCKMuH2h6bnLx08wJv7JGBO0YQHu4lhEUOr2HmQxYIRUcUQpkYUSBLNNTwXIAHFSHDcEPNEEdnBinoz3QCCaEFhkMFgR+FAnVhHU4xyIFKfbiB+M9cD9qFgxUoJmRDDbfhFsQOHdq3YEFJAIbbDDi8lSNCSPhQ40c0vGFDQR5Od8MQHYG3xZKUAcAfeFFQKeSHv6XhIG4/6DDlbEIUkdET8eFUAw1K1jTmakLIoANxRgCJUSBuapTHDD+EsaZFWRB4HQ4IDlRlX2c4eV0OV2DEVA2FBIrRF0YsggMVx1VERIRH4sDhP48OdEQQcBzJiSMXqf8CQBA6aNFKRoAMBqUMZzxGUReSTlXGhHzcudMNAORwB3h5iZpKDl+6RAhGUij60Qw5/DAGfQrxSFwQhYlirEB8nCmfH4ceZIMXP/gww2t4DDEhRT0E8UZLMQhGiZ8I0eEDcT+E8lwad7Lxjw00INKfGoUh5AQjtNaIAysV2UBofz/kUMmpBpWRJYs+QPKPSjHCREYQT8aQgxQJFTGIDx/LWUOdB23hGnE50dAJtwQloetQNdQgRB1agGW00UEkIeKY/viglUE2rIHGYk/alUMTCR0hA9MsCRZDFfMOlIUWKQehiA0AvBvD2mvPsARiHKTswxcHcUGFD6PhfB9ChiD/k7fe/sTwgySHPFHQqCRCCO7BNjTuuOP/MDGEcA/qIEMeBTGBgA/NAR54DduQdNANYdDws+cy0LAFzWME+5HlmJwI9RgZt2QEEgTZkEkOcQKeAw1jhG1QEQdA63ngSM4gxpqP7NHjDDKMIobwFjHxRbZvrLXEhDfscAfeVeNreq8YPSHFV+FjpgMOnsj2T70z0PBDFDSX1AMVRRvxdBKf+IBH+iGpgQ9AVRKmLMJdAAQJGv6gibdUAgdN4BhKbKAH1f1DCF3IQQ6OFwMk/SAN6dIIEaIgB0sc7w3Y0okNnKCUtzgBDQg8ngwkAQZNxeQJZcDBDxIYuBzowDMzcAMP/zODAwC4jyc3qAKS/kacGPggCtTjyRp6N5Q7LHF5cMGgHDaIszSFMCk3WEv6ZCADXdRvK0fYXOdKxC/DwKdVLGqXGQwXoB5QAnyYwYEZ3JOFFYFkBpyYAS2iOBsb8IAGWoCjP2bgA1/NhggXYgm0yMCzHBXhDDhojn/AQCEeOElwOKjE07hEkCcAAAc4UBOFduSDHAwhF6RMyA6kIDoKQaEMtaTJI9gwhR348pfADGYweUkHJzDhi+6xwREmMYUpsEGY0ITmM4VQixwE7ZrYzKY2sSmIIHBySbAghSC2Sc5y/qEROzye3mggrxzdwBPRUidudDAEeeKMBlIgpGduYP+FeNqzJQ75J3Py6c5+CnQoAT1oS/CpT8Pw058KTahCQcLQgkL0oBKdqD8qiqKHahQkGZ0oRynk0Y/6YwhMnCgeqNBQuNzgExf9ZwcnR4Oa2vSmOM3pTduAhZbCxQzI0KlQh2q6IRxhCzxIqlKXytSmKnUNTvApXGwgBl/0ogtOzapTwSBBmUBhA4nIkRCqcMZYCoQI9ZAACxyQo0Ns4Ad6QCaXABAAFqAgAB7YAIW4sAl/CNAObJCqZ7qgBA+kIwDrWAcEXDDK2dxgo3Zp1xXomCMmVIMbHghBAPbBWbwWwD1eMBdIeLczkuLABSxwwWY5y1oXpGMNyBECDfaEL0b/FmJ624mCAVjQAsSy9rcB4EYxkEMjjAXBEyw0TBKgwQ1uJPa30OUsN2jgGSf8C3BywEEDlWIDDaAgtauNLnDTEYJK9mRyCeygDwRhKJ6Q4RYsgEB4xcvaAHzXHJ7ZghF6BLjMqIERyUVJDxTgAQn4lr71DYEEQqCPf/DgBJXiCReugLsq7CEHXMOMYs5gQ4wIgR3p8IA15kvfdeyjBelwBkmKEIESMKAfuTQJE5ogCRz4YA4XjAINYpohHMhgDXI9iBVKYFcS09e+EqBAGQbygW4sQBoMMMA2OnyRPIyBBhuMAQ0wMZAkNCFbQ6xBEEYxrYrEQx0FPjCC9xEAFxhY/68DWcMFGsAPfiwAHNkgQIQvwpQ34PEjOWjYP3ZABeFwkAY+aIIjC9IFzGp2zZxdRwjS0QJ79MUGL4jAAurMDyUsoBjZgIGfhEDqUpM6RFcIQjpZ8gM4pEsIPPiBHDLMEhuDAiFt8ICRxYtkczSKIDgowaY5XWcl8MMBHxCCBqrxgGY7+wMTIAIk4japLhjkCGdgy73624YYD8QGxjDwmttsYBwc5AjR+IaxiV3sbhxgCgqAhrznLW8FrKEItAXaD6j8DygUOqUscqU+tyABF5RYwSigxoke4GR213kBDFDBP7ZggX5Y/OIWr8AZ/kEGP2JGDhtXVxgKkQNF4mQGQf+gLELsoWvoJhYCElCHtRHihQsQw+F1bkA+gCQFbGAc49DYow2seSQaBHh4xfsOvnxwAIskAQUoMHFn3eyAH1JGHcYYNrsXUIIMCAQLPv+5xaGhnX9E4mY4eQMNAFCROnjChy2pgQzMe5BpeMDEkk4HCrzR2IPMoATrZrcSQFAMJVUi7GKHRi3yczHc5MDbBbEBErB1E/+Ih88OMHALJJCAy1OkCN+IRuCJvQAHUEFsiP85NH7NBiPJZwZBHggRyCADNGh5BoL9BwI8wI0IxAAj9MiH1klvDHPMqwmpB/qvkSWHqmlh5kbBAg7aUIeSBGECdE/OLSiAc35IowRpIAj/8sU+9l//QxXX1Te/EwR5paiAAcPnNNehUZDxk3/1BdlcymRQdrMSBACAh3NKsAIR0Hf2l3jm9w+QlDgsAQcyECr+JwQUYACjJ38O8AMGcYCql4D/sAZohxM0sAT+NxAYIHwCqGnUo4HKBzUzgAfE8XgjuAMMwH3dVwJhkoHJd3H4ZxBsEATEoQMzkH0UogDZEH8Plw8kgBAqqIMcuBRLYC04kQNkYFZDVoGcBg7G0FUCsYTlhxBHcDqMQQN9t0oNUAxWaGcO4AoJwYX9sIMHcQAoEyPHQErbIGwCWAwNEGRs6IYGIVsMqBrVlyOJEAE06HBK4ABNt4Y52IUJoQcfxdgS8SKEhnEG+QACRrgAFyBxFLGHTTgQN1ADLigfP7Bo7gEASmAMFDB6FHALR3cQnFgRPeAGJ/cDNYA7XPIEE1AMEdBpaFgOFvGKFWEGfqQDNUAG69dJtsAAllgM4BB7W7iIbdiJBMEEcbASNaADVtCKZlUKL8AAKdB/mwiNfJgQB2AENQAAgjaCApEE3sAOGAGMFVMJlKSOMwGP9Ogeh0d+bYg19xggZgANAiB2AiAMe9SP7gEF+kANGbCQDCkA3nBESxIQACH5BAkKAP8ALAAAAABkAGQAAAj/AP8JHEiwoMGDCBHawDJjiMOHMbAwSUixosWLGDMSRCIjhr+PIGPgEKOxpMmTJr3MAMnSX44eKGPKnClQzMqWH2XApMlTZhEuGG3izLnTopMqPZP+uyHmBwc+F4UO1XnxkisfVo4onQkFgA8dOgQJsSgVJ1WLV3DEkPFDEZGtJos08YHmYww3msjeNFs0IRcjdmvgmIEU7kUbY2TgaDnD0kSKZVueTXgDDg2WMXTkwJLEMEUbjNrU8Ig5h6eKkVlORqhIDWnJMqB4RphHx4+hH4P0gbxXcl+DRHDUwO0vCNDZB8Usxk0jxo2EqUGuNmhF7dAYcSohR3iDyuXrQcJA/++t+jdBJ6SI18gRaDtCKMuH2h6bnLx08wJv7JGBO0YQHu4lhEUOr2HmQxYIRUcUQpkYUSBLNNTwXIAHFSHDcEPNEEdnBinoz3QCCaEFhkMFgR+FAnVhHU4xyIFKfbiB+M9cD9qFgxUoJmRDDbfhFsQOHdq3YEFJAIbbDDi8lSNCSPhQ40c0vGFDQR5Od8MQHYG3xZKUAcAfeFFQKeSHv6XhIG4/6DDlbEIUkdET8eFUAw1K1jTmakLIoANxRgCJUSBuapTHDD+EsaZFWRB4HQ4IDlRlX2c4eV0OV2DEVA2FBIrRF0YsggMVx1VERIRH4sDhP48OdEQQcBzJiSMXqf8CQBA6aNFKRoAMBqUMZzxGUReSTlXGhHzcudMNAORwB3h5iZpKDl+6RAhGUij60Qw5/DAGfQrxSFwQhYlirEB8nCmfH4ceZIMXP/gww2t4DDEhRT0E8UZLMQhGiZ8I0eEDcT+E8lwad7Lxjw00INKfGoUh5AQjtNaIAysV2UBofz/kUMmpBpWRJYs+QPKPSjHCREYQT8aQgxQJFTGIDx/LWUOdB23hGnE50dAJtwQloetQNdQgRB1agGW00UEkIeKY/viglUE2rIHGYk/alUMTCR0hA9MsCRZDFfMOlIUWKQehiA0AvBvD2mvPsARiHKTswxcHcUGFD6PhfB9ChiD/k7fe/sTwgySHPFHQqCRCCO7BNjTuuOP/MDGEcA/qIEMeBTGBgA/NAR54DduQdNANYdDws+cy0LAFzWME+5HlmJwI9RgZt2QEEgTZkEkOcQKeAw1jhG1QEQdA63ngSM4gxpqP7NHjDDKMIobwFjHxRbZvrLXEhDfscAfeVeNreq8YPSHFV+FjpgMOnsj2T70z0PBDFDSX1AMVRRvxdBKf+IBH+iGpgQ9AVRKmLMJdAAQJGv6gibdUAgdN4BhKbKAH1f1DCF3IQQ6OFwMk/SAN6dIIEaIgB0sc7w3Y0okNnKCUtzgBDQg8ngwkAQZNxeQJZcDBDxIYuBzowDMzcAMP/zODAwC4jyc3qAKS/kacGPggCtTjyRp6N5Q7LHF5cMGgHDaIszSFMCk3WEv6ZCADXdRvK0fYXOdKxC/DwKdVLGqXGQwXoB5QAnyYwYEZ3JOFFYFkBpyYAS2iOBsb8IAGWoCjP2bgA1/NhggXYgm0yMCzHBHhCzhojn/AQCEeOElwOKjE07hEECIgQDFqotCOfJCDIeSClC07wBRyBIUyiI4nRPAEFnbJy176spdWwMInpCAFMKThjO6xwREmMYUpsGEH0IymNKc5zWcKgQDcgAAKtsnNbnrzm9uEAAvkwSVYkEIQQUunOtfJTnX+oREtWEcI5knPetrznvVMRwoquf+dG3giWscjjg5SsI+CGvSgCE0oQtPBgC8i5wZWAGhAhzIEgir0ohjdB0MdOhuISnSiLaloRke60IbmyKMgJY5IScrSjZ40oinFzUpZOlKXogilMcXJTGmKUZtSCKc5ZckQXBAAnma0BQ7gqGdu8ImPxrSDKcgmBKZK1apa9apTbQEL8kHI2ZgBGTQIq1jHStayjhUHQ9iCCAoAg7a69a1wjSs0SCCCCUgwQDYQgy960QUe+PWvgA2sYHkAhrveUAptdI8QqoBMWC4lBhRIAQFydIgN/EAPSs0RGF5QAgos4BY/DBAXNuEPAdqBDV11jxjwUYIILIAfSvgGBUbZUX//fEdwPrgCHXN0CQ1k4wKw5YdwP0sP93jBXCDh3c5+KgUKdPa1wo0uBQzgBeQIgQZ7whcjCzG97XhBBSUwAHSjG90FRICcs6ERxoLgCRYahgnwyMYtlKAE8tpXuMYAgGec8C/AyQEHDVSKxb7x3PveVwnFaAA/eTK5BHbQB4IwFE8gkQAHgGC8Bo7uMlZQAmh4RhZGUJjnMqMGRrgXJU54wAWMsYD6Zji6SmhABPixDVTBgww9gYIZcAeMWeSAa5hRzBlsiBGEFaMEDcBwhutbjGI8ACZCwIcC8KGBacWkCH30gdMuGAUaOLVUMlhDZguyBQKU4BtKXvI3ImCCAwwk/wgmoAYMSFABADT2M2v4w2DWskeBJKEJ2RpiDYIwCivTSwD5cK2LXwxbYkRACf4gSBWGAYN+9EMA7+DFB1KRkSQ2jYk5mOVAdkAF4XCQBj5ogiML4gUG5EMai35xfSNggAmceCkZ6IAALG1pAdiDFxpw7+MeJxAimCEIO2zJbdIlBB78QA5AZgkOfAAKhFChG2k2cGwjUIEwFeQQztg1r3vdDxVswwbBoEIplsDuJZSCCoewQRfmkTIcRMIgRzgDW+4FuBi04ZYFsUECXMtoJVDAtacZnj0sMO5xC8AZa5gDJ452tCBAgQlfLu0PiCwQKJSaiZOSV0LGEAFiLFkaEf9YAQZuTZBNDEPcDRcACUbwjykkjiU6wN0BXFeaMygkDIXIgSJxMoMg7BYhI7hFmpUQjQj0o7oIYcMJsNFwXsNAAdUew5hqsIaD5eDmf5TB0QtCvN9dxwdursgRwLGCRRvcGAQoA0Vu8AB8wHzc1FBAjf9BMNzUQDz/iARyMUODhCekDp7wYUtqIIMFG0QG84WtjMGxgVUbpAkKuPu4oSEM+pAMaKLIzyp6NBQcJKJiSMDWTfwDeIvcwBzFWIABIpCBhiWECNCoQNUtTQ0VvGIgqfc77gSyAyPJxw5j/gcRyCADNMSABjNIbUEOkA0GyOMaGKGBCTTfa3xUY17BB9r/8JeSrJRp4d4XcQIWcNCGOpRkCT5wvEHqwIsC7N7SCrB9+OU0/n/MwQ3qsXEZIQYAZxgjQALc1w/U4AwYUBD7t3j99w8IIESTgjWOVRCaoADMcH8WgA9E9oBdE4GBgAbZNRQ54H4XGCIFYA8J2HsIYBAgCBI1EIH/oAeDxxJoUAopKBAxEG67JwAdQA3UE4MfMYMGcQPxQxxaUIBc4gQkYH/3pwA0+A9EWFpT2AdqQByIYAfyFyATcAItaALwwCRbN4U3sATWgi84gGOw1AUKcH/9YAEkwHECUYVGeBC5MiarQAOAQEo2AAPC0IIq8CJkKHwJcQAoMxRvkAONQEoA15B5PygM2KBUdjiFIRJJMXJEFMIFwvAOcKgCekARlUgRkHCDIEEDQ9CFcAELJgAN3EcNw0BzoliGczcnuOEHMnBnnvEF1NAB2HB3zcALtHUQo0gRXBAERLc1tociR0ADIiACvNZ7pmARxUgRh+BHfvADZKCLqsUO+AAN1CACFpB81dgycbASOkADCDB2jvUFGYAP8gAg1EiLFqEJbfADAJBYO8gERlADGFGOOtIEUZB8O1gRAFmQyPF5ckIxCBkgaaADNSI4adCQAcIEZRADDwERAECHARIQACH5BAkKAP8ALAAAAABkAGQAAAj/AP8JHEiwoMGDCBHawDJjiMOHMbAwSUixosWLGDMSRCIjhr+PIGPgEKOxpMmTJr3MAMnSX44eKGPKnClQzMqWH2XApMlTZhEuGG3izLnTopMqPZP+uyHmBwc+F4UO1XnxkisfVo4onQkFgA8dOgQJsSgVJ1WLV3DEkPFDEZGtJos08YHmYww3msjeNFs0IRcjdmvgmIEU7kUbY2TgaDnD0kSKZVueTXgDDg2WMXTkwJLEMEUbjNrU8Ig5h6eKkVlORqhIDWnJMqB4RphHx4+hH4P0gbxXcl+DRHDUwO0vCNDZB8Usxk0jxo2EqUGuNmhF7dAYcSohR3iDyuXrQcJA/++t+jdBJ6SI18gRaDtCKMuH2h6bnLx08wJv7JGBO0YQHu4lhEUOr2HmQxYIRUcUQpkYUSBLNNTwXIAHFSHDcEPNEEdnBinoz3QCCaEFhkMFgR+FAnVhHU4xyIFKfbiB+M9cD9qFgxUoJmRDDbfhFsQOHdq3YEFJAIbbDDi8lSNCSPhQ40c0vGFDQR5Od8MQHYG3xZKUAcAfeFFQKeSHv6XhIG4/6DDlbEdl9ER8ONVAg5I1jbmaEDLoQJwRQGIUSBElJWENBPA8ZlEWBF6HA4IDVdnXGU5el8MVGDFVQyGAZpQACyh44MBpFhER4ZE4cPiPowMdEQQcR3LiyEWqAP8QhA5atJIRDx4os04A6XCTQBoWdRHpVGVMyIedO90AQA53gJdXRUSkksOXLhGCUQTcBLDPPgEow00LD2ilI4/EBVGYKMgKxMeZ8vmxpkJe/ODDDK/hMcSEFPnDgrbbbhuACx6kEANFdPhA3A+hPJeGnWz8YwMNiPSnRmEIOcHIrDXiwEpFRbjQwjr99rtrr+aEiVAZWbLoAyT/qBQjTGQE8WQMOUiRUBGD+JBynDXQeZA9+4Ys9DohSCABNqYSlMRguNVQgxB1aAHW1FMHkYSIY/rjg7gF2bAGGos9aVcOTSS0hQQuCK02twCnkMO7A2WhxcxBKGIDAPTGoLfeMyz/gRgHM/vwxUFcUOHDaMSVh1AQLEDA79ohB9CCBxQMThARaJAIobkO2+D555//w8QQwj2ogwx5FMQEAj40l3hINWxD0kFETJBOro9Dvg/IRlvQ1xrDfnQ6JicahNgPObRkBBIE2ZBJDnC+7hINY+B7UBUKcCNBACDr7i/ALmxA35V4fDSDDKOIYf1FTHyRww9vrLXEhDfscMfhYrcUAw04nGFoRae4hQcc571+BaBTDMCCQJ4QhBnQ4AdR8FlJekAFqRlBXEn4hA/wkD/M1MAHVDhORoRQjk65IHeQW8c6jDYMkkTBB01IGkpsoAcabEkIXchB8qTnjxgg6QdpgJtG/7iADe2psIDcsob2aGADGc7kLU5Aw7w6qBpJgCFTMvlCMTzQAhRCLgASSIdnZuAGKtpFBzgAgGx6YgMZhMADJyxgADxQgPX1ZA3RG8odkFQDMQiRJ0kQgAS4sbsvtgAFEkzKDdbSQRnIQBeJVEoXFuCBdHBPbQFgwQ+QAx9WsUheZngChfbgAA+gIHcB4MY33JOFFYFkBpyYAS3siJwjZGCQIeCXNTzAsu0Q4UIsmRYZ6MMlLySgkgGY4zAoxAMnxeAHOKgE17g0ECyUkovTRM6OfJCDIeSCmgmhwS18kCMolGF2PBFCJc7whXa28xXujOcX4OnOM5yhCU1IwxT+R/8hGxxhElOYAht2QNCCGvSgBx2oECzAAHA49KEQjahEHwqCboyAS7AghSCcxtGOevSjHf1DI6KhBGk04KQnNSlKV6pSlKpUGsV4ATEDdANPUIuHidPBC/jB05769KdA/WkxEvBH5NzACjfFKW6GsNOgOvWp/BhqUWdz1KQqFSdMhapWhUrUHFX1qonL6lbHKlWvIhWsxBHrWLVaVhR9Fa1DUetan9pWCr0Vri0ZAgUWMFeoGoAAU/XMDT5hVbj68AXGAIFiF8vYxjp2sd9wgDpoiRwzIIMGmM2sZjfLWc3iYAhpGAE8Rkva0pr2tO6YgDdGgAx+BsgGYvBFL7rAg9r/2va2uM0tD8DgxJgcAQxOyJEQqhBJcC5lEDCQxwdydIgN/EAPgc2RFzKggHdQgwQ4ChAXNuGPD9qBDZQNUA/YoQBhCKAf/YAGNlwLlxv44zvP9MEVRLkkIVBhGCfox3nRKwASyMA9XmAXSKDXiZkaFQzvUEAB9ote9BagAlNAjhBooCf9zcAHhVDfdnZADwXYg8EN5q8w9IEcGvXnB0HwRHANQ4QanIAXAgBxiBuMD8vBxQkGk54ccKCJ4s6wCRZQsIxnzF8RwMDAPSGdGX3oA0GEIboZmYI+VFABahD5ygJI8DQ8IwsjRIyHmVEDI1aMkiPEYhgkGDKWYSAMGFBB/3THiDBPoGAG5gFjFjnImv4UcwYsZsQGVuiAM7Ch5ivbQwRBCK4NUCyDU7A3I0VopQ+29g8hRIEGhSWVDNYAZYJ44QEKgIaVrzxjAVigA/BYw0A0Eak8rSF1JfHaHwazFjMMJAlNeJ8Ze1iDIIzCWhV5AjqcgQ8BMIPUIRYANjpAjbINZA5xuEkM1kMFOV/kBlXQGuI+kgNr/2MHVBAOTvcHw0d/mxfOgEGhk90PEVRABklbpOtA8oYfSKIJr+oc6DwnECKYIQg/eNBt4CYEHvxADnpuCQ58AAqEZGEY6042NISBAeYVhBUyw00bUmGDSlBhCSAPORWwYIMuAE5Rkf8wyBHOwJY3gLkN6OyaN8yLbP0WgNkHOIgQ0kQcHzihSFSjmhGSEBz1/MDPA4FCuLfdn26GVwwdwAapBcBmC/ijt/84QPBKo8ApFCJGdZjR1kOSgzMoJAyFyIEnMxQE+iYkB2kmsgAmjg5vF+QIeT5SEN6yBoZVOgeaY8n53G6QIhwgB9/Rnw9yXhEmvMMCyX5HBz7wLO4sYWeYCYLlwmCn3fwjCgLGDA1AlZA6eCIHFQZJDWSA5IMcAsb6hYEI3rEEpHcoCMTRARMFgoR0OWwGPRoKDhJRERv0Pu89DE+lqiECATxDGNsQoY5s0x8jEL9OLxvIDowkHzt0mghkkAH/GvY3g/AaJA28wMcITGYRMozdLjK4V6N8v5RlzUwLKb+IE7CAgzaEXSNncAWdJhBMoAVZowZJgyrP5gZGZ3vQEXOGgQqJojIIICbZRxAIUEaS4mzGRRB0gHu4cToGpoADEQhokHo4kQP/14EOEwrBpz9GIApBcoEEoQehxxJoUAosmCLv10MycAd2RIIDcQMORBxaAIFcUgSAtydkRhBCOBB9oAbEgQh20HoocgWSEDi2BiNTgR83sAQTqD84QAbG1Qfc1TSslyD0VxCAwDRDsQo0AAjUdAN2kHj64wrAooY0aBAHkHE48QY50AjUtAYaOBQ0UH7jsYcFgSeBpxpru4QiRwBMuGEEj8iFfEERkHCDIEEDQ2CFnsEFX6EoNsMbilgQNyAnuOEHMuBjnpFth9gSNSAJrHgqa0g4ICh4MkAY1AR+PxB8MWAEAIIateh6ruQHP0AGs7gd+0dhz6QD5od9XWgRRRBt/qB7CEB4HSgGQ5ADyFA8TjiMB6EJbfADANAnOzgQRKAJwagXpXgQNtAEUTCA55iI0TiPAdJ7MeJ59rgdYRBwwkcH++geRVAGMfAQEAEADhggAQEAIfkECQoA/wAsAAAAAGQAZAAACP8A/wkcSLCgwYMIEdrAMmOIw4cxsDBJSLGixYsYMxJEIiOGv48gY+AQo7GkyZMmvcwAydJfjh4oY8qcKVDMypYfZcCkyVNmmiUYbeLMudOikyo9k/4jMg0FC3YXhQ7VefGSKx9WjiidGaMENxQQWjyxKBUnVYtXcMSQ8UMRka0meZjjlm7dugAenJG9abZoQi5GPsaogWMGUrgXj8BIJyHEun37QrjgxqNi2ZZnE96AQ4NlDB05sCRBTJGJAxYuAkBeHYDbLct8Mfs9qEiNR7MyoJBG6ATs49WsWcygeJll5oNEcNQY+jEIl90IMXhQDRzyunQBhCQsDvK4QStqh8b/iFMJukIHdatDDsCC3vbYxmcTdEKKub8aOQKZR+jJg3rrYOl2EHdEIXTDHjIwF0MQle2HUAPcUFcdXgQgRKA/3g2UiRG34URDDTc4iJAX6bjw3z7KeADGgPB1J98/QmixHHNBvCiiQDBM9986EhjDInMZ/tOEDx16hoMVNyYEiAsQ/FbdOizUYNCFGSYRGHMz4PBWkghNo6N667Swz5YDUTnbDUN0JF4QW3CZkA0lSCAhcOxhU5CZBaXBIXM/6GADdHM8h1El3IRwogvpTEEQngMJIYMO9hmxQ0aBFFESE8REY4SlF6nDjZN0elBhmS0WONAZRIqXwxUY3SBGDYVw/4oRNSWAc4s5p1xkSAsm/pfiAaQCWdQRQcCBJSeOXKQKAEHooEUrGSFxQQNKKFGMMdSQVBE2X04oAQMh/sPoDQDkcMeamlhERCo5JPhRDoRgJA8DC/DDjxINMGBAORMldASToAangUB8lIrhTnzsOZQOfvz5phc/+DBDh3gMES5Fx5SghL0cL0PBBS9gQZERHgRsHQQuaKUSkGz8YwMNiCioxmG8MdJskR/hwEpFRFBgwMYcc7yAAQxAk0ZCEcj5H14w/FOwsP+QEQTOguUgRUJFDOKDmkPVUAOZB9FTQr1BB62ENBFEAI9WBn3BjTKHppMEEznoYPfddgeRRIwG+//jA9sF2bAGGjj4Q3VIOTSRUBoRUFD24/x4fMsCADhMEAERgsmeCTZcM3EMoIM+wxI2jMHB4TH48MVBXFDhQw2H94XQEA6sQDbkQS8QTTbORFFQFS2gMOdj6Xgw8CM2JK+88v8wMYRyOOsgQx4FMYGADzTE3tJg22hrkA04FDPt7bjfy0/aEwgoUDXdBoCCBMUMgVHpP+TQkhFIEGRDJjkUbh9OOaDBGC7GugfcIgLVKp/QKHALCtRAO0sJQJMC4AIJpEADEMwIE76Qgx+8YS1LCNcNdnCH12nPMzTAwRn6ZZEuJCAfICBf+RbwjWwkYEX/kIEHrJEOCBRAfSbpARX/tKADI7AtCZ/wAR5OGJIa+IAKgsqIDWqwgm5QQIaQq1ba9KEbfogKhzKxgR5o0CYhdCEH9vtfSLL0gzRYriRPgAcDGGA+BfJjAcRgQDGaUATFJeUtTkCDxJjYHUmAQVYx4YEKLmAALEJuAQz4Bmlm4AZCGk4HOAAAEGdiA1Q0wIqOzF0+4EHApKzBf/+7Q5ZqIIY39oQJ7DAGHYH2OCUYYAUZ3MoN1nJCGchAF2CDixeE0Y1iOFIJJWDVbqCAA2PhJAYRM8NYHIQAc+Tjirm7hV7Mk4XwsGQGnJgBLUppHiJgIALZkAbQiHEBmu2GCDKY0btkQIZcJmkK1MhGMZSw/4B8eENEPCASNHFQCcC5aSBkIMAFskEOREJnij7IwRBycdCESEEdlEgSFMrgPZrYYAtbiIJIR0rSkpZ0C2QAgxi44FAH2eAIk5jCFNiwg5ra9KY4xSlNhVAOEhTgp0ANqlCHClRomIAGboIFKQThtaY69alQdeofGmEPAfTjqljNqla3mlV7UMOe5rmBJ9ylxrL6QwcZ4Kpa13pVe3jDlWG1AlnN+r8hpJWteO3qW5N0A7nStax2zatg++FWuEKnr3P961ACO1i8FpavflWsfRjb2LU+9kaIlexk71pZtV5WRJnV7GILQI3OqrUC1TDsbm7wicSK1nAzyEAHLEDb2v/a9ra4ta0CHkBO85gBGTQIrnCHS9ziDhcHQ5gCDozLXOL+gAY5aIMRABBMl4rBF73oAg+2y93ueve7PADDaHpChB0k60ZCqEJ1KyqQEQ4BGUC50SE28AM9qJZLThhCEGCXg/w5iAubuI8P7MCG3oroCFjA3m10MAOwwuUG/uiM4SJ2hWkmyQY8wIEWtpcDWezHCwoDSf864WDE3IAOTlwF1VbxgzlARwg0gNT2ZuCDQojBwEk5AiaC8IPYrQUV0BmSj38QBE84gTRC2IIW0qhGORiCNE7wgVnlgANNrDcmN0BCIQZpVhrY4b4yeR4hY0BjQYQBzBlJgieMoANL3sf/CH6EiyyMEDOzfkYNjDhyTIhwABxwrawz6MwY/jEJK0yKJ1AwQ/6AMYsc9G17MlBhSy1yAy/8gctm/cEPDjARG1jCCDnIwnlRUoRu+uBvMIoCDVxrnyzJYA1ons8SbkZXHdDADFHURKo66EaTCO4PhVmLGQaShCZ00JKDCcIo4lWRIpxia24OdAz8K5AjSFkwmKTCoS9ygyr4DXYiVtRAdkAF5dA1BjTwQRNYaJAj5EDKbo4xGMB2oD/74w4pPMWWlrc8gRDBDDzG2Q/88UYh8OAHcnh0S3DgA1BYyJtlrQENEKDnjUyNOcggwyMqQYUlePzjVMCCDbpwOvHgIBLt/z4DW95g5zZ0lCA3kIK9hzKDBL1cIDbok3184AQr4Q1vRkhCcuxTgx9MGgrlBrd9YiBRHKtCBo/+UBSuDIaLPzMHSJpCIYBUByGl6upnUEgYCpEDZ9I8CBZGiCy0cDgd/KAJ4z0IIOJgsBkE4S1rMJgMWiaEHMizJTVPe0GKcIAAiscHwKqIEOzWkhrIYAnuNMgNlpAD1AUh8WHQex8EEoUQo9ATFamDJ+rWeBmUuCBe2DBIflCDMZxeIIawOk5s7TAk6H0nNpjBwJmDg0RUxAa2d7RgghCGVlEhe7bOArsV4nYFtYFmjPrHDq60sC+riwwyQAO6Z4Bjg0AhgFLYdv9FtlBJ8cjAYsGaSlHIVXnxaAHlF3ECFnDQhq5rBAm9vkgRCmOfWMRdXLdHEHPgBkRndBkhBje3FZjQfs8UBOWxKAFIEAhQflcXZ+w1EFNgG8whPfYUfQIRCGggY0ORA/Z3gS5TA3igIPgzJRFIEHrgeSyBBqVgggLBA7LnGX8QA+Tkge0VaPahBQmYJJfgd5EieDXRggTRB2pgH4hgB6+3H2mBOj4gMj+ifgcxeQy4PThABuxFCEFAdKZnIUhIEIDAf0OxCjQACAd1A3YgYc9kBMUnhlCDEAdwgyDxBjnQCAelB3YIEjTAfe8xhwfhKH+HGZu0H44QT5FyiBAoiAewAQkw6IdD8IRb4QRG0GPPhANlABuOKHkSxxx+IANXths7YAdQVyQ1oAWjeISdaBBc8IWAB3WRJyJCQAY0gAYhYQSDxolWWBGHAHF+8ANksIr7kQSNcGys132s2IsUUQR0d1YTZ4QVZQjltg02cidjiBCa0AY/AADiR4MwAga7EBTZeBA20ARREGvgSBzluI6IYXtAsnnuuB9hgIk4gQN0MI/7UQRlEAMPAREAMGkOEhAAOw==\'>'|
	|'  ${text !== undefined ? \'<div class=\"slideText\"><span>\'+text+\'</span></div>\' : \'\'}`'|
	|'  mainDiv.appendChild(div);'|
	|''|
	|'  var image = div.querySelector(\'img\');'|
	|'  var downloadingImage = new Image();'|
	|'  downloadingImage.onload = function(){'|
	|'      image.src = this.src;   '|
	|'  };'|
	|'  downloadingImage.onerror = function(){'|
	|'    image.src = `data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAYAAACOEfKtAAABN2lDQ1BBZG9iZSBSR0IgKDE5OTgpAAAokZWPv0rDUBSHvxtFxaFWCOLgcCdRUGzVwYxJW4ogWKtDkq1JQ5ViEm6uf/oQjm4dXNx9AidHwUHxCXwDxamDQ4QMBYvf9J3fORzOAaNi152GUYbzWKt205Gu58vZF2aYAoBOmKV2q3UAECdxxBjf7wiA10277jTG+38yH6ZKAyNguxtlIYgK0L/SqQYxBMygn2oQD4CpTto1EE9AqZf7G1AKcv8ASsr1fBBfgNlzPR+MOcAMcl8BTB1da4Bakg7UWe9Uy6plWdLuJkEkjweZjs4zuR+HiUoT1dFRF8jvA2AxH2w3HblWtay99X/+PRHX82Vun0cIQCw9F1lBeKEuf1UYO5PrYsdwGQ7vYXpUZLs3cLcBC7dFtlqF8hY8Dn8AwMZP/fNTP8gAAAAJcEhZcwAAC4kAAAuJATfJy60AAATtaVRYdFhNTDpjb20uYWRvYmUueG1wAAAAAAA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzE0NSA3OS4xNjM0OTksIDIwMTgvMDgvMTMtMTY6NDA6MjIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdEV2dD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlRXZlbnQjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE5IChXaW5kb3dzKSIgeG1wOkNyZWF0ZURhdGU9IjIwMjAtMDEtMTdUMTE6MzgrMDI6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDIwLTAxLTE3VDExOjM4OjI5KzAyOjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDIwLTAxLTE3VDExOjM4OjI5KzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIgcGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpmMzVlODZkYS03MDAzLTI0NDgtODk1OS1hZjI3MDlkMDQzMDQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6ZjM1ZTg2ZGEtNzAwMy0yNDQ4LTg5NTktYWYyNzA5ZDA0MzA0IiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6ZjM1ZTg2ZGEtNzAwMy0yNDQ4LTg5NTktYWYyNzA5ZDA0MzA0Ij4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDpmMzVlODZkYS03MDAzLTI0NDgtODk1OS1hZjI3MDlkMDQzMDQiIHN0RXZ0OndoZW49IjIwMjAtMDEtMTdUMTE6MzgrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE5IChXaW5kb3dzKSIvPiA8L3JkZjpTZXE+IDwveG1wTU06SGlzdG9yeT4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz69VyBVAAAc+ElEQVR4nO19e5RcR3nn7/uq7r39mJ4ZzWhkSSMJSza2MMj4JcvgB4THsgmPEO8mfsMJTsiyJxuSJQTskA0JXgcCSxaSeMnZteGAvTYL5ixPAw4EGwxYNrbBNn5h2fJL1kiaZ0/3fVTVt3/U7Z6e6ds9M5Ls/LPfOffMOX3rVn31u1Xfu+6QiOD/0+GTBgAQraw1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`'|
	|'  };'|
	|'  downloadingImage.src = src;'|
	|''|
	|'  if(listener !== undefined){'|
	|'    div.addEventListener(\'click\', listener);'|
	|'  }'|
	|'}'|
	|''|
	|'function fillEmptySlider(){'|
	|'  slidesDiv.innerHTML = \'\';'|
	|'  const addPictureBtn = document.createElement(\'div\');'|
	|'  addPictureBtn.className = \'addPicture\';'|
	|'  addPictureBtn.innerHTML = `<span>&#43;</span>`'|
	|'  slidesDiv.appendChild(addPictureBtn);'|
	|''|
	|'  addPictureBtn.addEventListener(\'click\', () => {'|
	|'    send_to_1C(\'call1C\', \'{\"value\":\"add_picture\"}\')'|
	|'  })'|
	|'}'|
	|''|
	|'function fillSlider(jsonData){'|
	|'  const json = JSON.parse(jsonData);'|
	|'  const slides = json.Pictures;'|
	|''|
	|'  if(slides.length > 0) {'|
	|'    slidesDiv.innerHTML = `'|
	|'      <a class=\"prev\" onclick=\"plusSlides(-1)\"><span>&#10094;</span></a>'|
	|'      <a class=\"next\" onclick=\"plusSlides(1)\"><span>&#10095;</span></a>`;'|
	|'    thumbnailsDiv.innerHTML = \'\';'|
	|'    slides.forEach(slide => {'|
	|'      addImagesToSlider(thumbnailsDiv, \'thumbnail\', slide.ID, slide.Preview, function(){currentSlide(this)});'|
	|'      addImagesToSlider(slidesDiv, \'mySlides\', slide.ID, slide.Src, undefined, slide.Text);'|
	|'    });'|
	|'    showSlides(slideIndex);'|
	|'    return;'|
	|'  }'|
	|''|
	|'  fillEmptySlider();'|
	|'}'|
	|''|
	|'function addNewSlide(jsonData){'|
	|'  const json = JSON.parse(jsonData);'|
	|'  const slides = json.Pictures;'|
	|''|
	|'  if(slides.length > 0) {'|
	|'    if(slidesDiv.querySelector(\'.addPicture\')) {'|
	|'      slidesDiv.innerHTML = `'|
	|'      <a class=\"prev\" onclick=\"plusSlides(-1)\"><span>&#10094;</span></a>'|
	|'      <a class=\"next\" onclick=\"plusSlides(1)\"><span>&#10095;</span></a>`;'|
	|'    }'|
	|'    slides.forEach(slide => {'|
	|'      if(document.querySelectorAll(\'[data-id=\"\' + slide.ID + \'\"]\').length !== 0) return;'|
	|'      addImagesToSlider(thumbnailsDiv, \'thumbnail\', slide.ID, slide.Preview, function(){currentSlide(this)});'|
	|'      addImagesToSlider(slidesDiv, \'mySlides\', slide.ID, slide.Src, undefined, slide.Text);'|
	|'    });'|
	|'    showSlides(-1);'|
	|'    return true;'|
	|'  }'|
	|''|
	|'  return false;'|
	|'}'|
	|''|
	|'function removeCurrentSlide(id){'|
	|'  let slideImages = document.querySelectorAll(\'[data-id=\"\'+id+\'\"]\');'|
	|'  slideImages.forEach(image => image.remove());'|
	|''|
	|'  showSlides(slideIndex);'|
	|'}'|
	|''|
	|'function changeSlidePriority(id, priority){'|
	|'  const slideImages = document.querySelectorAll(\'[data-id=\"\'+id+\'\"]\');'|
	|'  if(!slideImages) return false;'|
	|''|
	|'  slideImages.forEach(img => {'|
	|'    let insertBeforeSlide = \'\';'|
	|'    if(priority === 1){'|
	|'      insertBeforeSlide = img.previousElementSibling;'|
	|'    }'|
	|''|
	|'    if(priority === -1){'|
	|'      insertBeforeSlide = img.nextElementSibling.nextElementSibling !== null ? img.nextElementSibling.nextElementSibling  : \'append_child\';'|
	|'      if(insertBeforeSlide === \'append_child\'){'|
	|'        img.parentNode.appendChild(img);'|
	|'        return;'|
	|'      }'|
	|'    }'|
	|''|
	|'    img.parentNode.insertBefore(img, insertBeforeSlide);'|
	|'  })'|
	|''|
	|'  ++slideIndex;'|
	|'}'|
	|''|
	|'function moveSlideInDOM(slide, slideInsertBefore){'|
	|'  if(!slideInsertBefore) return false;'|
	|'  if(slideInsertBefore === \'append_child\'){'|
	|'    slide.parentNode.appendChild(slide);'|
	|'    return;'|
	|'  }'|
	|'  slide.parentNode.insertBefore(slide, slideInsertBefore);'|
	|'}'|
	|''|
	|'function displayTarget(className, booleanDisplay){'|
	|'  document.querySelector(\'.\'+className).style.display = !booleanDisplay ? \'none\' : \'\';'|
	|'}'|
	|''|
	|'function changeArrowsColor(){'|
	|'  document.querySelectorAll(\'a.prev, a.next\').forEach(arrow => {'|
	|'    arrow.classList.toggle(\'btn-transparent\');'|
	|'  });'|
	|'}'|
	|''|
	|'function clearAll(){'|
	|'  document.querySelectorAll(\'.thumbnails, .slides\').forEach(element => element.innerHTML = \'\');'|
	|'}'|
	|''|
	|'document.querySelector(\'.btn.updateSlider\').addEventListener(\'click\', () => {send_to_1C(\'call1C\', \'{\"value\":\"update_slider\"}\')})'|
	|'document.querySelector(\'.btn.addImage\').addEventListener(\'click\', () => {send_to_1C(\'call1C\', \'{\"value\":\"add_picture\"}\')})'|
	|'document.querySelector(\'.btn.addImagesFromGallery\').addEventListener(\'click\', () => {send_to_1C(\'call1C\', \'{\"value\":\"addImagesFromGallery\"}\')})'|
	|'document.querySelector(\'.btn.removeImage\').addEventListener(\'click\', () => {'|
	|'  if(!getCurrentSlideId()) return false;'|
	|'  send_to_1C(\'call1C\', `{\"value\":\"remove_picture\", \"id\":\"${getCurrentSlideId()}\"}`);'|
	|'})'|
	|'document.querySelector(\'.btn.moveImageUp\').addEventListener(\'click\', () => {'|
	|'  if(!getCurrentSlideId()) return false;'|
	|'  if(!document.querySelector(\'.thumbnail.active\').previousElementSibling) return false;'|
	|'  send_to_1C(\'call1C\', `{\"value\":\"change_priority\", \"id\":\"${getCurrentSlideId()}\", \"priority\":\"1\"}`);'|
	|'})'|
	|'document.querySelector(\'.btn.moveImageDown\').addEventListener(\'click\', () => {'|
	|'  if(!getCurrentSlideId()) return false;'|
	|'  if(!document.querySelector(\'.thumbnail.active\').nextElementSibling) return false;'|
	|'  send_to_1C(\'call1C\', `{\"value\":\"change_priority\", \"id\":\"${getCurrentSlideId()}\", \"priority\":\"-1\"}`);'|
	|'})'|
	|'document.querySelector(\'.btn.showText\').addEventListener(\'click\', function() {'|
	|'  this.classList.toggle(\'fill-color\');'|
	|'  document.querySelectorAll(\'.slideText\').forEach(slideText => slideText.classList.toggle(\'displayText\'));'|
	|'})'|
	|'document.querySelector(\'.btn.zoomImage\').addEventListener(\'click\', () => {send_to_1C(\'call1C\', `{\"value\":\"zoom_img\", \"id\":\"${getCurrentSlideId()}\"}`)})'|
	|'document.querySelector(\'.btn.changeBgColor\').addEventListener(\'click\', function () {'|
	|'  this.classList.toggle(\'fill-color\');'|
	|'  document.querySelector(\'.slides\').classList.toggle(\'fill-color\');'|
	|'})'|
	|'  </script>'|
	|'<button id=\"call1CEvent\" style=\"display: none\">call1C</button>'|
	|''|
	|'</body></html>'|
