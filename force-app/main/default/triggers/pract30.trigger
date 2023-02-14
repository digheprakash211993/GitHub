trigger pract30 on States__c (after insert) {
   set<id> slist= new set<id>();
    for(States__c svar:[select id,name,Country__c from States__c where id=:trigger.new]){
        slist.add(svar.Country__c);
    }
    
    list<Country__c> cobj=[select id,name,Phone__c,URL__c,no_of_count__c,(select id,name from States__r) from Country__c where id=:slist];
    for(Country__c cvar:cobj){
        cvar.no_of_count__c=  string.valueOf(cvar.States__r.size());
    }
  update  cobj;
}