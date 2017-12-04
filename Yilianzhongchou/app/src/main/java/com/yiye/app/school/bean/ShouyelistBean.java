package com.yiye.app.school.bean;

import org.litepal.crud.DataSupport;

/**
 * Created by 青春 on 2017/11/25.
 */

public class ShouyelistBean extends DataSupport{
    String sushehao;
    String banji;
    String name;
    String weiji;
    String time;
    String num;
    String yuanyin;

    public String getSushehao() {
        return sushehao;
    }

    public void setSushehao(String sushehao) {
        this.sushehao = sushehao;
    }

    public String getBanji() {
        return banji;
    }

    public void setBanji(String banji) {
        this.banji = banji;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getWeiji() {
        return weiji;
    }

    public void setWeiji(String weiji) {
        this.weiji = weiji;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getYuanyin() {
        return yuanyin;
    }

    public void setYuanyin(String yuanyin) {
        this.yuanyin = yuanyin;
    }
}
