trigger pract25 on States__c (before update) {
set<id>  svar= new set<id>();
    for(States__c sobj:trigger.new){
        svar.add(sobj.Country__c);
    }
    map<id,Country__c> mobj= new map<id,Country__c>();
    list<Country__c> cvar=[select id, name,Phone__c,URL__c from Country__c where id=:svar ];
    if(cvar.size()>0){
    for(Country__c cvar1:cvar){
        mobj.put(cvar1.id,cvar1);  
    }
    }
    if(mobj.size()>0){
        for(States__c s111:trigger.new){
          mobj.get(s111.Country__c).URL__c= s111.URL__c;
        }
    }
    update mobj.values();
}