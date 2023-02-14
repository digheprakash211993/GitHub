trigger rollupsum on States__c (after insert) {
    set<id> sobj= new set<id>();
    for(States__c k:[select id, name, Dist__c,Country__c, no_of_country__c, URL__c from States__c where id=:trigger.new]){
        sobj.add(k.Country__c);  
    }
    
   list<Country__c> cobj =[select id, name, Country_rigion__c, no_of_count__c, URL__c,(select id, name from States__r) from Country__c where id=:sobj];
    for(Country__c c1:cobj){
        c1.no_of_count__c= string.valueOf(c1.States__r.size());   
       
    }
update cobj;
}