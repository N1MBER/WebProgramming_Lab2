<%--
  Created by IntelliJ IDEA.
  User: n1mber
  Date: 12.11.2019
  Time: 00:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>N1MBER</title>
    <link rel="stylesheet" type="text/css" href="MainPage.css">
    <script type="text/javascript" src="jquery-3.4.1.min.js"></script>
</head>
<body>
<table id="menu" >
    <tr>
        <th class="logo" width="10%">
            <a class="logo_link" href="MainPage.jsp" style="opacity: 1">
                <img src="Picture/logo.png" width="40" height="40">
            </a>
        </th>
        <th class="lab_1" width=" 20%">
            <a class="lab1_link" href="https://se.ifmo.ru/~s263830/PIP/Lab1/Lab1.html" style="opacity: 1">
                <span class="lab1_link_text">Lab 1</span>
            </a>
        </th>
        <th class="lab_2" width=" 20%">
            <a class="lab2_link" href="index.jsp" style="opacity: 1">
                <span class="lab2_link_text">Lab 2</span>
            </a>
        </th>
        <th class="documentation" width=" 20%">
            <a class="doc_link" href="Documentation.jsp" style="opacity: 1">
                <span class="doc_link_text">Documentation</span>
            </a>
        </th>
        <th width="50">
        </th>
    </tr>
</table>
<div id="content" style="z-index: 10">
    <div id="picture_second" class="picture_second" >
        <img src="Picture/f400290347611bd57a63728d10bc87131ad0d8a9.jpg"  style="background-repeat: no-repeat " width="100%" >
        <p id="comment_for_2lab">
        <h1 id="descrption_lab">New amazing application.</h1>
        <p id="descrption">
            Революционная система определения координат - гораздо больше возможностей и неизменная
            простота в использовании. Появление динамического графического отображения необходимой зоны для попаданий.
            Впервые в нашем опыте мы используем технологию «‎canvas».‎ Превосходная валидация получаемых данных.
            Использование невероятно удобных элементов ввода.<br>
            <br>
            Представляем <b>Laboratory work №2 of Web Programming</b>.
        </p>
        </p>
    </div>
    <br><br>
    <br>
    <table width="100%" style="border-spacing: 2em">
        <tr>
            <td width="40%" class="try_code">
                <p>
                <h1>Посмотрите ближе.</h1>
                <p>Три поля ввода. Приятный дизайн. Космический фон и соответствующие впечатления.</p>
                </br>
                </br>
                <a href="index.jsp">Попробовать ></a>
                </p>
            </td>
            <td width="60%" class="try_code">
                <img src="Picture/21.png " width="100%">
            </td>
        </tr>
    </table>
    </br></br></br></br><div id="backOfImage">
    <table id="different_picture" width="100%">
        <tr>
            <td width="33%">
                <img src="Picture/11.png" id="11" width="400">
            </td >
            <td width="33%">
                <table>
                    <tr>
                        <td>
                            <img src="Picture/Снимок%20экрана%202019-11-13%20в%2023.39.39.png" id="13" width="400">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            </br>
                            </br>
                            </br>
                            </br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="Picture/13.png" id="14" width="400">
                        </td>
                    </tr>
                </table>

            </td>
            <td width="33%">
                <img src="Picture/pop.png" id="12" height="400">
            </td>
        </tr>
    </table>
</div>
    </br>
    </br>
    </br>
    <table width="100%" style="border-spacing: 2em">
        <tr>
            <td width="60%" class="try_code">
                <img src="Picture/Studio-mic-icon_30398.png " width="100%">
            </td>
            <td width="40%" class="try_code">
                <p>
                <h1>Дело в словах.</h1>
                <p>Впервые мы используем технологию голосового ввода. Просто скажите "help", чтобы получить информацию о том как
                задавать координаты. После ввода просто скажите "отправить".</p>
                </br>
                </br>
                <a href="index.jsp">Попробовать ></a>
                </p>
            </td>
        </tr>
    </table>
    <p id="design">Designed by N1MBER in Saint-Petersburg </p>
</div>
<%--<div id="rotatediv" style="overflow: hidden" >--%>
<%--    <img src="Picture/Tsunami_by_hokusai_19th_century.jpg" width="2000" id="rotateimage">--%>
<%--</div>--%>

</body>
</html>
<script>
    $(window).scroll(function () {
        if ($(this).scrollTop() >= 1400) {
            animate($(this).scrollTop()-1800);
        }
    });

    const animate = (e) => {
        $('#rotateimage').css('transform', `rotate(${e/15}deg)`);
    }
</script>