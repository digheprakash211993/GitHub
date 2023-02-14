public class famous {
    
    public void damm(){
     Country__c c2= new Country__c();
        c2.name= 'humm';
        c2.Country_MD__c='a098c00000sKYf1';
        insert c2;
        if(c2.id!=null){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, 'Record inserted');
            ApexPages.addMessage(myMsg);  
        }  
    }
    
    public list<Country__c> getdemo(){
       list<Country__c>  cobj=[select id, name, Country_rigion__c, Phone__c, URL__c from Country__c];
    
        return cobj;
    }

}