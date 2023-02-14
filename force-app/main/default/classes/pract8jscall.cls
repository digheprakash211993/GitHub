public class pract8jscall {
    @auraenabled
    public static list<Country__c> method1(){
        list<Country__c> cobj=[select id,name,Phone__c  from Country__c limit 5];
        
        return cobj;
    }
}