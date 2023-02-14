trigger Practfinaltrigg on Country__c (before update) {
    list<States__c> s1=new list<States__c>();
    list<States__c> sobj=[select id,name,Country__c,URL__c from States__c where  Country__c=:trigger.newmap.keyset()];
    for(States__c slist:sobj){
        slist.URL__c=trigger.newmap.get(slist.Country__c).URL__c;
        s1.add(slist);
    }
    update s1;
}