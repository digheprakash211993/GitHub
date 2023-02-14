trigger partochild on Country__c (before update) {
    list<States__c> data= [select id, name, prise__c,URL__c, Country__c from States__c where Country__c =:trigger.newmap.keyset()];
    list<States__c> sobj= new list<States__c>();
    for(States__c k:data){
        k.URL__c=trigger.newmap.get(k.Country__c).URL__c;
        sobj.add(k);
    }
    update sobj;
}