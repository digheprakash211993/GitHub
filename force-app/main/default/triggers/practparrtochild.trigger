trigger practparrtochild on Country__c (before update) {
     list<States__c> sobj= new list<States__c>();
    list<States__c> cobj=[select id, name, URL__c, Country__c  from States__c where Country__c=:trigger.newmap.keyset()];
    for(States__c k:cobj){
        k.URL__c=trigger.newmap.get(k.Country__c).URL__c;
        sobj.add(k);
    }
    update sobj;
    
}