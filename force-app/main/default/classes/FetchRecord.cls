public with sharing class FetchRecord {
    @AuraEnabled(cacheable=true)
    public static list<account> accmethod( string namelist){
        list<Account> acc=[select id,name,phone from account where name=:namelist];
        return acc; 
    }
}