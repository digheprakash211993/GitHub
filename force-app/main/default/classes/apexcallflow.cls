public class apexcallflow {
@InvocableMethod
 public static list<String> demo(list<id> accid){
        list<String> str= new list<String>();
        list<Country__c> cobj= [select id, name from Country__c where id=:accid];
        for(Country__c k:cobj){
            str.add(k.name);
            
        }
     return str;
    }
    
    
    
}