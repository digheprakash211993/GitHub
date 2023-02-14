public class tammm {

   
    public void sam(){
     States__c data= new States__c();
        data.name='ship';
        insert data;
        if(data.id !=null){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, 'succesfuly inserted');
            ApexPages.addMessage(myMsg);
        }  
    }
    
    public list<States__c> getdemo(){
       list<States__c> sobj =[select id, name, Country__c, Dist__c, URL__c from States__c];
            
       return sobj;
    }

}