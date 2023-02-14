public class recordinsert {
    public string str{set;get;}
    public list<Country__c> data{set;get;}
    public recordinsert(){
        data =[select id, name, Country_rigion__c,States__c, Phone__c from Country__c];
    }
    
    public void demo(){
    data =[select id, name, Country_rigion__c,States__c, Phone__c from Country__c where name=:str];
       
        if(data.size() ==0){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.INFO, 'RECORD NOT FOUND');
            ApexPages.addMessage(myMsg);
        }
    }
        public void damm(){
         Country__c C1= new Country__c();
        C1.name= 'Russ';
        insert C1;
            if(C1.id != NULL){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.INFO, 'RECORD inserted successfully');
            ApexPages.addMessage(myMsg);
           
          }
        }
}