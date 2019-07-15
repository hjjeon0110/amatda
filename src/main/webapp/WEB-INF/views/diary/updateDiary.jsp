<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/menubar.jsp"></jsp:include>

<input type="hidden" name="mno"
			value="${ sessionScope.loginUser.mno }" />


<table>
    <thead>
        <tr>
            <th class="checkbox">
                <input type="checkbox" id="ck_all">
            </th>
            <th>번호</th>
			<th>제목</th>
			<th>등록일</th>
        </tr>
    </thead>
    <tbody>
   
        <tr data-tr_value="1">
            <td><input type="checkbox" name="checkRow" value="1"></td>
            <td>aaaaaaaaaaaaa</td>
            <td>sdfdgdfd</td>
            <td>sdfssdgdfgsdfg</td>
        </tr>
         <tr data-tr_value="2">
            <td><input type="checkbox" name="checkRow" value="2"></td>
            <td>bbbbb</td>
            <td>sdfdgdfd</td>
            <td>sdfssdgdfgsdfg</td>
        </tr>
         <tr data-tr_value="3">
            <td><input type="checkbox" name="checkRow" value="3"></td>
            <td>ccccc</td>
            <td>sdfdgdfd</td>
            <td>sdfssdgdfgsdfg</td>
        </tr>
        <tr data-tr_value="4">
            <td><input type="checkbox" name="checkRow" value="4"></td>
            <td>sssss</td>
            <td>sdfdgdfd</td>
            <td>sdfssdgdfgsdfg</td>
        </tr>
        
    </tbody>
</table>
 
<input type="button" id="delete">삭제

<script>
$(document).ready(function(){
    //체크박스 전체 선탣&해제
    $('#ck_all').click(function(){
         if($("#ck_all").prop("checked")){
            $("input[type=checkbox]").prop("checked",true); 
        }else{
            $("input[type=checkbox]").prop("checked",false); 
        }
    });
 
    $('#delete').click(function(){
        if(confirm("삭제하시겠습니까?")){
            $("input[name=checkRow]:checked").each(function(){
                var tr_value =$(this).val();
                var tr=$("tr[data-tr_value='"+tr_value+"']");
                tr.remove();
            });
        }else{
            return false;
        }
    });
 
});

</script>

</body>
</html>