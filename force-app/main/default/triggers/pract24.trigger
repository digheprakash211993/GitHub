trigger pract24 on Country__c (before insert) {
    set<string> svar= new set<string>();
    for(Country__c cobj:trigger.new){
        svar.add(cobj.name);
    }
    map<string,Country__c> mobj= new map<string,Country__c>();
    list<Country__c> cvar=[select id,name from Country__c where name=:svar ];
    for(Country__c cobj:cvar){
        mobj.put(cobj.name, cobj);
    }
    if(mobj.size()>0){
        for(Country__c clistvar:trigger.new){
            if(mobj.containsKey(clistvar.name)){
                clistvar.adderror('This is dublicate entry');
            }
        }
    }
}