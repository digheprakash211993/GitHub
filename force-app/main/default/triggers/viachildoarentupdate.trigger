trigger viachildoarentupdate on States__c (before update) {
     set<id> sobj=new  set<id>();
    for(States__c k:trigger.new){
        sobj.add(k.Country__c);
    }
    
    map<id,Country__c > mobj=new map<id,Country__c >();
    list<Country__c> data=[select id, name, Country_MD__c, Country_rigion__c, Phone__c,URL__c from Country__c where id=:sobj];
    if(data.size()>0){
    for(Country__c cobj:data){
        mobj.put(cobj.id, cobj);
    }
    }
    if(mobj.size()>0){
        for(States__c n:trigger.new){
            mobj.get(n.Country__c).URL__c=n.URL__c;    
        }    
    }
    update mobj.values();
    
}