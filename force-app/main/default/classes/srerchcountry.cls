public class srerchcountry {
    public string srttext{set;get;}
    public list<Country__c> demo{set;get;}
    public srerchcountry()
    {
       demo =[select id, name, Country_rigion__c, Phone__c, States__c from Country__c];
system.debug(demo);
    }
    public void data()
    {
    
     demo =[select id, name, Country_rigion__c, Phone__c, States__c from Country__c where name =:srttext];
    system.debug(srttext);
   
    if(demo.size()== 0){
        ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, 'No record found');
        ApexPages.addMessage(myMsg);
        
    } 
    }
    
    
}