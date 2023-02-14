public class messageinsert {
    public string str{set;get;}
    public list<Hotel__c> data{set;get;}
    public messageinsert(){
      data =[select id, name, Hotel_Name__c, Hotel_MD__c,Mobile_number__c from Hotel__c];
        
    }
    public void demo(){
        Hotel__c hott= new Hotel__c();
       data =[select id, name, Hotel_Name__c, Hotel_MD__c,Mobile_number__c from Hotel__c where name=:str]; 
        if(data.size()==0){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, 'Record not found');
            ApexPages.addMessage(myMsg);
        }
        
    }

}