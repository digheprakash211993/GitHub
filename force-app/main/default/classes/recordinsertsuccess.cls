public class recordinsertsuccess {
    
    public void demo(){
        Country__c c1=new Country__c();
        c1.name='hindustan';
        c1.Country_MD__c='a098c00000sLuAK';
        
        insert c1;
        if(c1.id!=NULL){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, 'inserted succesfully');
            ApexPages.addMessage(myMsg);
        }
    }
    
    public list<Country__c> getdemo1(){
        list<Country__c> cobj= [select id, name, Country_rigion__c, Phone__c, URL__c from Country__c ];
        
        
        return cobj;
    }

}