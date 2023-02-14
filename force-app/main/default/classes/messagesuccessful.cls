public class messagesuccessful {
    
    public void demo(){
        Country__c data= new Country__c();
        data.name='Ram';
        data.Country_MD__c='a098c00000sKYf1';
        insert data;
        if(data.id !=null){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, 'succesfully insered');
            ApexPages.addMessage(myMsg);
        }
    }
    public list<Country__c> getdemo1(){
        
        list<Country__c> cobj=[select id, name, Country_rigion__c, Phone__c, URL__c from Country__c];
        
        return cobj;
    }
}