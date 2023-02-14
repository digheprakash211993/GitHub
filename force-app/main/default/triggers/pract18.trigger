trigger pract18 on Country__c (before update) {
list<States__c> sobj=[select id,name,Country__c from States__c where Country__c=:trigger.newmap.keyset()];
    list<States__c> slistobj= new list<States__c>();
    for(States__c svar:sobj){
    if(trigger.newmap.get(svar.Country__c).URL__c !=trigger.oldmap.get(svar.Country__c).URL__c){
        svar.URL__c=trigger.newmap.get(svar.Country__c).URL__c;
        slistobj.add(svar);
    }
    }
    update slistobj;
}