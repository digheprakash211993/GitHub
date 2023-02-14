public class Pract7calljs {
@auraenabled
    public static list<Country__c> method1(){
        list<Country__c> cobj=[select Id,Name,Phone__c from Country__c LIMIT 5];
        return cobj;
    }
}