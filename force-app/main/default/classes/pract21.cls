public class pract21 {

   
    public list<Country__c> getdemo(){
      list<Country__c>  cvar=[select id , name from Country__c];
        
       return cvar; 
    }
}