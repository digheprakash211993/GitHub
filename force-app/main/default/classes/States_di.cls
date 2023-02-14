public with sharing class States_di {
    @Auraenabled(cacheable=true)
   
    public static list<States__c> demo1(string finalId){
    
        return[select id,Name,prise__c,URL__c from States__c where Country__c=:finalId LIMIT 5];
        }
}