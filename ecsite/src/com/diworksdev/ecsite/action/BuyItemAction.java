package com.diworksdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.diworksdev.ecsite.dao.BuyItemDAO;
import com.diworksdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	private int count;
	private String pay;

	@Override
	public String execute() {
		BuyItemDAO dao = new BuyItemDAO();
		BuyItemDTO buyItemDTO = dao.getBuyItemInfo();

		// 商品情報をsessionに保存（JSPのキーに合わせて命名）
		session.put("buyItem_name", buyItemDTO.getItemName());
		session.put("buyItem_price", buyItemDTO.getItemPrice());
		session.put("id", buyItemDTO.getId()); // DB登録用にも必要

		// ユーザー選択情報を保存
		session.put("count", count);

		// 合計金額の計算
		try {
			int intPrice = Integer.parseInt(buyItemDTO.getItemPrice());
			session.put("total_price", count * intPrice);
		} catch (NumberFormatException e) {
			session.put("total_price", "0");
		}

		// 支払い方法を判定
		String payment = "1".equals(pay) ? "現金払い" : "クレジットカード";
		session.put("pay", payment);

		return SUCCESS;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}