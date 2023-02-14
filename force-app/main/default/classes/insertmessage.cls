public class insertmessage {
    public string liststr{set;get;}
    public list<Country__c> cobj{set;get;}
    public insertmessage()
    {     
       cobj =[select id, name, Country_rigion__c, Phone__c, URL__c from Country__c];
    }
    public void demo()
    {
        cobj =[select id, name, Country_rigion__c, Phone__c, URL__c from Country__c where name=:liststr];
        if(cobj.size()==0){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.WARNING, 'Not record Found');
            ApexPages.addMessage(myMsg);
            
        }
    }
}