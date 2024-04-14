<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ipath" value="<%=request.getContextPath() %>" />
<script src="./js/jquery-3.2.1.min.js"></script> <!-- 외부 스크립트 불러오기 -->
<link rel="stylesheet" href="${ipath }/css/bootstrap.min.css" /> <!-- 외부 스타일 불러오기 -->
<script src="${ipath }/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" />
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR" rel="stylesheet">
<link rel="stylesheet" href="${ipath }/css/common.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="subject" content="강릉 경포동 소개(Gyungpo-dong Intro)" />
<meta name="description" content="강릉, 경포동, 문화재, 해변, 맛집, 벚꽃, 커피" />
<meta name="keywords" content="강릉, 경포동, 문화재, 해변, 맛집, 벚꽃, 커피" />
<link rel="icon" href="${ipath }/images/faviconex.png" />
<link rel="shortcut icon" href="${ipath }/images/faviconex.png" />
<meta property="og:type" content="website" />
<meta property="og:title" content="gangreung" />
<meta property="og:description" content="강릉, 경포동, 문화재, 해변, 맛집, 벚꽃, 커피" />
<meta property="og:image" content="${ipath }/images/site.png" />
<meta property="og:url" content="http://localhost:8091" />