public class Removecustrecord {
    @auraenabled
    public static list<Country__c> method1(){
        list<Country__c> cobj= new list<Country__c>();
        cobj=[select id, name,Phone__c, URL__c from Country__c];
        
        return cobj;
    }

}