/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package View;

/**
 *
 * @author sayee
 */
public class CustomerNotFoundException extends  Exception{
    public CustomerNotFoundException(){
        super("");
    }
    public CustomerNotFoundException(String msg){
        super(msg);
    }
    
}
