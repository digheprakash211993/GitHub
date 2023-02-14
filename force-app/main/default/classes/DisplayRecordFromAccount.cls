public with sharing class DisplayRecordFromAccount {
    @AuraEnabled(cacheable=true)
    public static list<Account> demo(){
        list<Account> accvar=[select id,name,phone,industry from account limit 5];
return accvar;
    }
}