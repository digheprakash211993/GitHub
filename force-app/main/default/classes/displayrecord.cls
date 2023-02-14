public class displayrecord {
   @auraenabled
    public static list<Country__c> demo(){
      list<Country__c> cobj=[select id,name,Phone__c,Image__c from Country__c limit 10];
        return cobj;
    }
}