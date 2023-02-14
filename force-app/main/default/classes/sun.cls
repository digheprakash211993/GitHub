public class sun {
        public list<Country__c> query{set;get;}
    public sun()
   {
   query=[select Country_MD__c, Country_rigion__c, States__c, Ticket_prise__c from Country__c];
      
    }
}