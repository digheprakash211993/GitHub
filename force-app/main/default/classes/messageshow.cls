public class messageshow {
    public string str{set;get;}
    public list<Country__c> data{set;get;}
    public messageshow()
    {
               data =[select id, name, Country_rigion__c, Phone__c, States__c, URL__c from Country__c];

    }
public void demo()
{    
data =[select id, name, Country_rigion__c, Phone__c, States__c, URL__c from Country__c where name=:str];
    if(data.size()==0){
        ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, 'Record not found');
         ApexPages.addMessage(myMsg);
        }
}
}