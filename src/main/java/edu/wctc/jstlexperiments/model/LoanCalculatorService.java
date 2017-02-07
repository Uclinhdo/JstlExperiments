/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.jstlexperiments.model;

/**
 *
 * @author linhdo
 */
public class LoanCalculatorService {
    
    private String status;
    private int salary;
    private int month;
    private int credit;
    
    public final String getStaus(){
        if(salary>= 40000){
            if(credit>= 600 || month > 12){
                status = "Loan Approved!";
            }else{
                status = "Loan Denied!";
            }
        }else if(salary< 40000){
            if(credit >= 600 && month > 12){
                status = "Loan Approved!";
            }else{
                status = "Loan Denied!";
            }
        }
        return status;
    }
    
}
