public class classpractical {
    @auraenabled
    public static string demo(){
        
        Return 'PRAKASH';
    }
     @auraenabled
    public static integer damm(){
        
        Return 100;
    }
    @auraenabled
    public static list<Country__c> cmethod(){
        list<Country__c> cobj= new list<Country__c>();
        cobj=[select id, name, URL__c from Country__c limit 5];
        
        Return cobj;
    }

}