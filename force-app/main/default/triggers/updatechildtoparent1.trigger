trigger updatechildtoparent1 on States__c (before update) {
    set<id> sobj=new set<id>();
    for(States__c k:trigger.new){
      sobj.add(k.Country__c);
    }
    
    map<id, Country__c> mobj= new map<id, Country__c>();
   list<Country__c> cobj =[select id, name, States__c, Phone__c, URL__c from Country__c where id=:sobj ];
    for(Country__c G:cobj){
        mobj.put(G.id, G);
    }
    
    if(mobj.size()>0){
        for(States__c sobj:trigger.new){
            mobj.get(sobj.Country__c).URL__c=sobj.URL__c;
            
        }
    }
    update mobj.values();
        
}