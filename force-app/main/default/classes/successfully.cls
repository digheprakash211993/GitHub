public class successfully {
    
    public successfully()
    {
           
    }
    public void insacc(){
        Country__c cobj= new  Country__c();
        cobj.name='Russ';
        cobj.Country_MD__c='a098c00000sLuAK';
        insert cobj; 
        if(cobj.id!=null){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,cobj.name+'  '+'Message inserted successully');
            ApexPages.addMessage(myMsg);
        }
    }
    
    
    public list<Country__c> getdemo(){
        list<Country__c> damm=new list<Country__c>();
      list<Country__c> C1 =[select id, name, Country_rigion__c, States__c, Ticket_prise__c from Country__c];
        return C1;
    }

}