public class pract20 {
    public string searchvar{set;get;}
    public list<Country__c> cvar{set;get;}
    
    public void demo(){
            Country__c cobj= new Country__c();
            cobj.Name=searchvar;
            COBJ.Country_MD__c='a098c00000sKYf1';
            insert cobj;
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,cobj.name+' '+ 'Record inserted');
        ApexPages.addMessage(myMsg);
        system.debug(cobj.id);
        }
    
}