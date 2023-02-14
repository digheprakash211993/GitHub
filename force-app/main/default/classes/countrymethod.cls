public class countrymethod {
    
    public list<Country__c> getdemo()
    {
         list<Country__c> str= [select id, name, Country_rigion__c, States__c from Country__c ];
       
        
        
      return str  ;
    }

}