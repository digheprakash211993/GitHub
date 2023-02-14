public class pract8 {
    public list<Country__c> cvar{set;get;}
    public void demo(){
      cvar=[select id, name , Country_MD__c, Phone__c, URL__c from Country__c];  
    }
}