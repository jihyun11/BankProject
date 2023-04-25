package com.example.bank.houseloan;

public class House {

    private String 주소;

    private double 주택가격 = 100000000;

    private boolean 대출여부 = true;

    public boolean 주택등록 (String 주소, double 주택가격, boolean 대출여부) {
        return true;
    }

    public boolean 주택수정 (String 주소, double 주택가격, boolean 대출여부) {
        return true;
    }

    public boolean 주택삭제 (String 주소) {
        return true;
    }

    public boolean 주택조회 (String 주소) {
        if(주소.equals("현대아파트")) {
            return true;
        } else {
            return false;
        }
    }

    public boolean 대출여부확인 (String 주소) {
        return this.대출여부;
    }

    public double get주택가격 (String 주소) {
        return this.주택가격;
    }

}

