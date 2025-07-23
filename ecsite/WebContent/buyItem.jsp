<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>BuyItem画面</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
	text-align: center; /* ここで本文を中央揃え */
}

table {
	margin: 0 auto; /* テーブルを中央に配置 */
	text-align: center;
}

#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
	text-align: center; /* 見出しの中央揃え */
}

#header, #footer {
	width: 100%;
	height: 80px;
	background-color: black;
}

#main {
	width: 100%;
	height: auto;
	text-align: center; /* main全体の中央揃え */
	padding-bottom: 30px;
}

form {
	text-align: center;
	margin-top: 20px;
}

input[type="submit"] {
	display: block;
	margin: 20px auto;
}
</style>
</head>
<body>
	<div id="header">
		<div id="pr"></div>
	</div>

	<div id="main">
		<div id="top">
			<p>BuyItem</p>
		</div>

		<div>
			<h3>以下の商品をご確認ください</h3>

			<s:form action="BuyItemAction">
				<table>
					<tr>
						<td><strong>商品名：</strong></td>
						<td><s:property value="#session.buyItem_name" /></td>
					</tr>

					<tr>
						<td><strong>価格：</strong></td>
						<td><s:property value="#session.buyItem_price" /> 円</td>
					</tr>

					<tr>
						<td><strong>購入個数：</strong></td>
						<td><s:select name="count" list="{'1','2','3','4','5'}" /></td>
					</tr>

					<tr>
						<td><strong>支払い方法：</strong></td>
						<td><s:radio name="pay" list="{'現金','クレジットカード'}" /></td>
					</tr>
				</table>

				<br />
				<s:submit value="購入" />
			</s:form>

			<p>
				前画面に戻る場合は <a href="<s:url action='GoHomeAction' />">こちら</a>
			</p>
			<p>
				マイページは <a href="<s:url action='MyPageAction' />">こちら</a>
			</p>
		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>
