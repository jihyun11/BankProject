package com.example.bank.houseloan;

public class Customer {

    private String 주민번호;
    private String 성명;

    public boolean 고객등록(String 주민번호, String 성명) {
        // todo
        return false;
    }

    public boolean 고객수정(String 주민번호, String 성명) {
        // todo
        return false;
    }

    public boolean 고객삭제(String 주민번호) {
        // todo
        return false;
    }

    public boolean 고객조회(String 주민번호) {
        if (주민번호.equals("1234")) {
            return true;
        } else {
            return false;
        }
    }
}
