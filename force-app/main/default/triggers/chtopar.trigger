trigger chtopar on States__c (before update) {
    set<id> sobj= new set<id>();
    for(States__c k:trigger.new){
        sobj.add(k.Country__c);
    }
    map<id,Country__c> mobj= new map<id,Country__c>();
   list<Country__c>  cobj=[select id, name, Phone__c, URL__c, Ticket_prise__c from Country__c where id=:sobj];
    for(Country__c c1:cobj){
        mobj.put(c1.id, c1);
    }
    if(mobj.size()>0){
        for(States__c s1:trigger.new){
            mobj.get(s1.Country__c).URL__c=s1.URL__c;
        }
    }
    update mobj.values();
    
}