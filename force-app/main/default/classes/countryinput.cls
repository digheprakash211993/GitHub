public class countryinput {
    public list<Country__c> demo{set;get;}
    public countryinput()
    {
        list<Country__c> demo=[select id, name, Country_rigion__c, Phone__c, Ticket_prise__c from Country__c ];
        system.debug(demo);
    }
    public void d1(){
        
    }

}