<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<title>BuyItemConfirm画面</title>

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
</style>
</head>

<body>
    <div id="header">
        <div id="pr"></div>
    </div>

    <div id="main">
        <div id="top">
            <p>BuyItemConfirm</p>
        </div>

        <div>
            <h3>購入内容の確認</h3>
            <table border="1">
                <tr>
                    <th>商品名</th>
                    <td><s:property value="#session.buyItem_name" /></td>
                </tr>
                <tr>
                    <th>値段</th>
                    <td><s:property value="#session.total_price" /> 円</td>
                </tr>
                <tr>
                    <th>購入個数</th>
                    <td><s:property value="#session.count" /> 個</td>
                </tr>
                <tr>
                    <th>支払い方法</th>
                    <td><s:property value="#session.pay" /></td>
                </tr>
            </table>

            <br />

            <table>
                <tr>
                    <td>
                        <s:form action="HomeAction" method="post">
                            <s:submit value="戻る" />
                        </s:form>
                    </td>
                    <td>
                        <s:form action="BuyItemConfirmAction" method="post">
                            <s:submit value="購入を確定する" />
                        </s:form>
                    </td>
                </tr>
            </table>
        </div>

        <br>

        <div>
            <p>
                前画面に戻る場合は <a href='<s:url action="GoHomeAction" />'>こちら</a>
            </p>
            <p>
                マイページは <a href='<s:url action="MyPageAction" />'>こちら</a>
            </p>
        </div>
    </div>

    <div id="footer">
        <div id="pr"></div>
    </div>
</body>
</html>

