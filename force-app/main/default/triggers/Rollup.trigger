trigger Rollup on States__c (after insert) {
   set<id> sobj= new set<id>();
    for(States__c k:[select id , name, Country__c,URL__c from States__c where id=:trigger.new]){
        sobj.add(k.Country__c);   
    }
    
  list<Country__c> cobj =[select id, name, Country_rigion__c, URL__c,no_of_count__c,(select id, name from States__r ) from Country__c where id=:sobj];
    for(Country__c k1:cobj){
        k1.no_of_count__c= string.valueOf(k1.States__r.size());
         }
    update cobj;
}