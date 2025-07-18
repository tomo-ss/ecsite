package com.diworksdev.ecsite.action;

import com.opensymphony.xwork2.ActionSupport;

public class GoHomeAction extends ActionSupport {

    @Override
    public String execute() {
        return SUCCESS; // "home.jsp" に遷移
    }
}