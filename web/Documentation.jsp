<%--
  Created by IntelliJ IDEA.
  User: n1mber
  Date: 18.11.2019
  Time: 00:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Documentaion</title>
    <link rel="stylesheet" href="MainPage.css" type="text/css">
</head>
<body>
<table width="100%" id="menu">
    <tr>
        <td width="5%">
            <a href="MainPage.jsp" id="img">
                <img src="Picture/logo.png" width="40px">
            </a>
        </td>
        <td width="95%">
           <p id="descr">Documentation</p>
        </td>
    </tr>
</table>
<div id="content" style="z-index: 10">
    <table width="100%" style="border-spacing: 2em">
        <tr>
            <td width="60%" class="try_code">
                <img src="Picture/Снимок%20экрана%202019-11-18%20в%2001.02.31.png " width="100%">
            </td>
            <td width="40%" class="try_code">
                <p>
                <h1>Отчёт за первую лабораторную.</h1>
                <p>Отчёт за первую лабораторную работу. Находится на кафедре. Хранится на кафедре должен 5 лет, но в итоге будет использован как лист для написания рубежки.</p>
                </br>
                </br>
                <a href="Documents/PIP1.pdf">Просмотреть ></a>
                </p>
            </td>
        </tr>
    </table>
    <table width="100%" style="border-spacing: 2em">
        <tr>
            <td width="40%" class="try_code">
                <p>
                <h1>Отчёт за вторую лабораторную.</h1>
                <p>Отчёт за вторую лабораторную работу. Находится у студента до моемента сдачи лабы. Хранится на кафедре должен 5 лет, но в итоге будет использован как лист для написания рубежки.</p>
                </br>
                </br>
                <a href="Documents/PIP2.pdf">Просмотреть ></a>
                </p>
            </td>
            <td width="60%" class="try_code">
                <img src="Picture/Снимок%20экрана%202019-11-18%20в%2001.11.55.png " width="100%">
            </td>
        </tr>
    </table>
    <p id="design">Designed by N1MBER in Saint-Petersburg </p>
</div>
</body>
</html>
