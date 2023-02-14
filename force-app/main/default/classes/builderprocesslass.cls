public class builderprocesslass {
@Invocablemethod
    
    public static void method1(list<Id> recid){
        list<States__c> cobj=[select id,name from States__c where id=:recid];  
        delete cobj;
       
    }
    
}