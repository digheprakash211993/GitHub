trigger childtoparentupdate on States__c (before update) {
    set<id> sobj= new set<id>();
    for(States__c k:trigger.new){
        sobj.add(k.Country__c);
    }
       map<id,Country__c> mobj= new map<id,Country__c>();
    list<Country__c> data=[select id,name, Country_rigion__c, Phone__c, URL__c from Country__c where id=:sobj];
    if(data.size() >0){
        for(Country__c cobj:data){
            mobj.put(cobj.id, cobj);
        }           
    }
    if(mobj.size()>0){
        for(States__c g:trigger.new){
            mobj.get(g.Country__c).URL__c=g.URL__c;
        }    
        
    }
update mobj.values();
}