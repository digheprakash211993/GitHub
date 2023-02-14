public class pract9jscall {
@auraenabled
    public static list<Country__c> method1(){
        list<Country__c> cobj=[select id,Name,phone__c,URL__C From Country__c limit 5];
        return cobj;
    }
    @auraenabled
    public static string method2(ID Acclist){
        Country__c cobj1=[select id,Name,phone__c,URL__C From Country__c where id=:Acclist];
        system.debug('value from lighning '+cobj1);
        return cobj1.Name;
    }
}