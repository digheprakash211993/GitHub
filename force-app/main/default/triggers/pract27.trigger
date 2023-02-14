trigger pract27 on Country__c (before insert) {
   set<string> slist= new set<string>();
    for(Country__c cvar:trigger.new){
        slist.add(cvar.name);
    }
    map<string,Country__c> mobj = new map<string,Country__c>();
    list<Country__c> cobj=[select id, name, URL__c from Country__c where name=:slist];
    for(Country__c cvar1:cobj){
    mobj.put(cvar1.name, cvar1);
    }
    if(mobj.size()>0){
        for(Country__c c1:trigger.new){
            if(mobj.containsKey(c1.name)){
                c1.adderror('This is dublicate entry');
            }
        }
    }
    
    
}