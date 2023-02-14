public class Honey {
    
    public void data(){
        Hotel__c hott=new Hotel__c();
        hott.name='sham';
        hott.Hotel_MD__c='a0B8c0000122FI6';
         insert hott;   
        if(hott.id !=null){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, 'record inserted');
            ApexPages.addMessage(myMsg);
        
    }
    }
    
    public list<Hotel__c> getdemo(){
     list<Hotel__c>  c1  =[select id, name, Hotel_Address__c, Hotel_Name__c, Hotel_prise__c, Mobile_number__c from Hotel__c ];
        
        return c1;
        }
        
        
}