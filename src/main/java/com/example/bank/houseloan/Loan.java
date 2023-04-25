package com.example.bank.houseloan;

public class Loan {
    private String 대출id;

    private String 주민번호;

    private String 주소;

    private double 대출금액;

    private double 상환금액;

    private int 대출일;

    private int 상환예정일;

    private int 상환일;

    public double 대출 (String 주민번호, String 주소, int 대출일, int 상환예정일) {
        Customer customer = new Customer();
        if (customer.고객조회(주민번호)) {
            House house = new House();
            if (house.주택조회(주소)) {
                if (house.대출여부확인(주소)) {
                    this.대출id = 주민번호 + 주소;
                    this.주민번호 = 주민번호;
                    this.주소 = 주소;
                    this.대출금액 = house.get주택가격(주소) * 0.6;
                    this.대출일 = 대출일;
                    this.상환예정일 = 상환예정일;
                    //DB 저장
                    return this.대출금액;
                } else {
                    return -3;
                }
            } else {
                return -2;
            }
        } else {
            return -1;
        }
    }

    public double 상환 (String 주민번호, String 주소, int 상환일) {
        Customer customer = new Customer();
        if (customer.고객조회(주민번호)) {
            House house = new House();
            if (house.주택조회(주소)) {
                if (this.연체확인(상환일)) {
                    this.상환금액 = this.대출금액 + (this.대출금액 * 0.02);
                } else {
                    return this.상환금액 = this.대출금액;
                }
                this.상환일 = 상환일;
                //DB 저장
                return this.상환금액;
            } else {
                return -2;
            }

        } else {
            return -1;
        }
    }

    public boolean 연체확인 (int 상환일) {
        if (상환일 > this.상환예정일) {
            return true; //연체됨
        } else {
            return false; //연체됨
        }
    }
}
