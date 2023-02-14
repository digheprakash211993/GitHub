public class pract6 {
    public list<Country__c> cvar{set;get;}
    public pract6(){
       cvar =[select id,name, Country_rigion__c,Phone__c, URL__c,Ticket_prise__c from Country__c];
     
    }
}