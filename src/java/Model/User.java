package Model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sayee
 */
public class User {
   String name="smith";
   String pass="123";
   
   public User(){
       
   }
   public boolean validateuser(String stuser,String stpass){
       boolean found=false;
       if ((name.equals(stuser)) && (pass.equals(stpass))){
           found=true;
                
   }
       return found;
   }
}
