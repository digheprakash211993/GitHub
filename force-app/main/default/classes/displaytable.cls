public class displaytable {
    @auraenabled
    public static list<Country__c> method1(){
        list<Country__c> cobj=new list<Country__c>();
        cobj=[select id,Name, Phone__c, URL__c from Country__c limit 5];
        
        return cobj;
    }

}