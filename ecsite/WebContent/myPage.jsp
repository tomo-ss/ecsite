<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MyPage画面</title>
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
}

table {
	text-align: center;
	margin: 0 auto;
}

#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
}

#header, #footer {
	width: 100%;
	height: 80px;
	background-color: black;
	clear: both;
}

#main {
	width: 100%;
	min-height: 500px;
	text-align: center;
}

#text-right {
	display: inline-block;
	text-align: right;
}
</style>
</head>
<body>
	<div id="header">
		<div id="pr"></div>
	</div>

	<div id="main">
		<div id="top">
			<p>MyPage</p>
		</div>

		<div>
			<s:if test="myPageList == null">
				<h3>ご購入情報はありません。</h3>
			</s:if>

			<s:if test="myPageList != null && message == null">
				<h3>ご購入情報は以下になります。</h3>
				<table border="1">
					<tr>
						<th>商品名</th>
						<th>値段</th>
						<th>購入個数</th>
						<th>支払い方法</th>
						<th>購入日</th>
					</tr>
					<s:iterator value="myPageList">
						<tr>
							<td><s:property value="itemName" /></td>
							<td><s:property value="totalPrice" /> 円</td>
							<td><s:property value="totalCount" /> 個</td>
							<td><s:property value="payment" /></td>
							<td><s:property value="insert_date" /></td>
						</tr>
					</s:iterator>
				</table>
				<s:form action="MyPageAction">
					<s:hidden name="deleteFlg" value="1" />
					<s:submit value="削除" />
				</s:form>
			</s:if>

			<s:if test="message != null">
				<h3>
					<s:property value="message" />
				</h3>
			</s:if>

			<div id="text-right">
				<p>
					Homeへ戻る場合は <a href='<s:url action="GoHomeAction" />'>こちら</a>
				</p>
				<p>
					ログアウトする場合は <a href='<s:url action="LogoutAction" />'>こちら</a>
				</p>
			</div>
		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>