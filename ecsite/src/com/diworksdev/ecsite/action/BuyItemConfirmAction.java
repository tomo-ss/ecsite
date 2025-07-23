package com.diworksdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.diworksdev.ecsite.dao.BuyItemCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware {
    private Map<String, Object> session;
    private BuyItemCompleteDAO buyItemCompleteDAO = new BuyItemCompleteDAO();

    @Override
    public String execute() throws SQLException {
        // セッションの内容をログ出力（デバッグ用）
        System.out.println("buyItem_name: " + session.get("buyItem_name"));
        System.out.println("total_price: " + session.get("total_price"));
        System.out.println("count: " + session.get("count"));
        System.out.println("login_user_id: " + session.get("login_user_id"));
        System.out.println("pay: " + session.get("pay"));

        // 必要な値がnullでないかチェック
        if (session.get("id") == null || session.get("total_price") == null ||
            session.get("count") == null || session.get("login_user_id") == null ||
            session.get("pay") == null) {
            System.out.println("セッションに必要な値が存在しません。");
            return ERROR;
        }

        // DAOメソッド呼び出し（文字列化に安全を期す）
        buyItemCompleteDAO.buyItemInfo(
            session.get("id").toString(),
            session.get("total_price").toString(),
            session.get("count").toString(),
            session.get("login_user_id").toString(),
            session.get("pay").toString()
        );

        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }
}
