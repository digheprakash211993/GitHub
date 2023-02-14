public class ranjan {
    public list<account> accobj{get;set;}
    public ranjan()
    { 
   accobj=[select id, name, phone, industry, URL__c from account limit 5];
system.debug(accobj);
        
    }
    
}