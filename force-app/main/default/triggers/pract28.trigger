trigger pract28 on States__c (after insert) {
    set<id> svar= new set<id>();
    for(States__c sobj:[select id, name,Country__c from States__c where id=:trigger.new]){
        svar.add(sobj.Country__c);
    }
    list<Country__c > cvar= [select id, name,no_of_count__c,(select id,name from States__r) from Country__c where id=:svar];
    for(Country__c cobj:cvar){
        cobj.no_of_count__c= string.valueOf(cobj.States__r.size());
    }
    update cvar;
}