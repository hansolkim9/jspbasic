<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.jsp.entity.Dancer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%!
    // 필드 선언
    public static List<Dancer> dancerList = new ArrayList<>();
%>

<%
    request.setCharacterEncoding("utf-8");

    String name = request.getParameter("name");
    String crewName = request.getParameter("crewName");
    String danceLevel = request.getParameter("danceLevel");
    String[] genres = request.getParameterValues("genres");

    // 댄서 객체 생성
    Dancer dancer = new Dancer();
    dancer.setName(name);
    dancer.setCrewName(crewName);
    dancer.setDanceLevel(Dancer.DanceLevel.valueOf(danceLevel));

    List<Dancer.Genre> genreList = new ArrayList<>();
    for (String genre : genres) {
        genreList.add(Dancer.Genre.valueOf(genre));
    }
    dancer.setGenres(genreList);

    System.out.println("dancer = " + dancer);

    // 댄서 리스트에 등록
    dancerList.add(dancer);

%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <h1><%= dancer.getName() %>님이 등록되었습니다.</h1>
    <a href="/chap02/dancer/show-list">댄서 정보 모아보기</a>
</body>
</html>