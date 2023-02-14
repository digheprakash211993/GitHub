public with sharing class Countryclass {
    @Auraenabled(cacheable=true)
   
public static list<Country__c> demo(){

    return[select id,Name,Phone__c,Email__c from Country__c ORDER BY ID limit 5 ];
    }
}