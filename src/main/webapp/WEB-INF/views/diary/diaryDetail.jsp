<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프라이빗 다이어리 상세페이지</title>
</head>
<body>
	<div id="diaryDetail" class="col-sm-10">
			<h3 class="title">다이어리</h3>
			<hr>
			<br />
			<div class="listArea" align="center" >
				<form action="" method="post" encType="multipart/form-data">
					<table width="100%" id="imgArea">
						<tr>
							<td>
								<img id="Img1">								
							</td>
						</tr>
					</table>			
				<br /><br />
				<table class="separate" border="1" id="tableArea">
					<tr>
						<td>매입번호</td>
						<td><%= p.getPcid() %>
							<input type="hidden" name="pcdId" value="<%= p.getPcdId() %>">
							<input type="hidden" name="pcid" value="<%= p.getPcid() %>">
							<input type="hidden" name="pBarcode" value="<%= p.getpBarcode() %>">
						</td>
					</tr>
					<tr>
						<td  >대분류</td>
						<td  ><%= p.getcGroup() %>
						<input type="hidden" name="cGroup" value="<%= p.getcGroup() %>"></td>
				</tr>
				<tr>
					<td  >중분류</td>
					<td  ><%= p.getName() %>
					<input type="hidden" name="cName" value="<%= p.getName() %>"></td>
				</tr>
				<tr>
					<td  >브랜드</td>
					<td  ><%= p.getBrand() %>
					<input type="hidden" name="pBrand" value="<%= p.getBrand() %>"></td>
				</tr>
				<tr>
					<td  >모델</td>
					<td  ><%= p.getModel() %>
					<input type="hidden" name="pModel" value="<%= p.getModel() %>"></td>
				</tr>
				<tr>
					<td  >사용기간</td>
					<td  ><%= p.getuPeriod() %>
					<input type="hidden" name="uPeriod" value="<%= p.getuPeriod() %>"></td>
				</tr>
				<tr>
					<td  >구매원가</td>
					<td   ><%= p.getpCost() %>
					<input type="hidden" name="pCost" value="<%= p.getpCost() %>"></td>
				</tr>
				<tr>
					<td  >판매희망가</td>
					<td  ><%= p.gethCost() %>
					<input type="hidden" name="hCost" value="<%= p.gethCost() %>"></td>
				</tr>			
				<tr>
					<td  >상품명</td>
					<td  ><input name="pName" size="50"></td>
				</tr>
				<tr>
					<td  >상품등급</td>
					<td  >
					<select name="pGrade" id="">
						<option value="">---선택---</option>
						<option value="A">A</option>
						<option value="B">B</option>
						<option value="C">C</option>
						<option value="D">D</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>치수 및 비고</td>
					<td><textarea name="pContent" cols="80%" rows="5"></textarea></td>
				</tr>					
			</table>
			<br><br>
			<div align="center" class="btnArea">
				<button type="submit">등록</button>
			</div>
			<div id="fileArea">
				<input type="file" id="thumbnailImg1" name="ThumbnailImg1" onchange="LoadImg(this,1)">				
			</div>
			</form>
			<br>
		</div>
	</div>
	<script>
		$(function(){
			$("#fileArea").hide();
			
			$("#Img1").click(function(){
				$("#thumbnailImg1").click();
			});						
		});
		function LoadImg(value, num){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					switch(num){
					case 1 : $("#Img1").attr("src", e.target.result); break;					
					}
				}
				reader.readAsDataURL(value.files[0]);
			}
		}
	</script>

</body>
</html>