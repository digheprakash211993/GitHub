public class country {
    public list<Country__c> demo{set;get;}
    public country(){
      list<Country__c> demo  =[select id, Country_MD__c, Country_rigion__c, Ticket_prise__c, States__c from Country__c]; 
        system.debug(demo);
    }

}