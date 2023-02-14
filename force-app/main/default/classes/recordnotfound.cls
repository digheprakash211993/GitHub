public class recordnotfound {
    public string str{set;get;}
    public list<Country__c> data{set;get;}
    public recordnotfound(){
       data =[select id, name, Country_rigion__c, Country_MD__c, Phone__c, URL__c from Country__c];     
       
    }
    
    public void demo1(){
        
        data =[select id, name, Country_rigion__c, Country_MD__c, Phone__c, URL__c from Country__c where name=:str];
        
          if(data.size()==0){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, 'No record found');
             ApexPages.addMessage(myMsg);
        }    
    }
}