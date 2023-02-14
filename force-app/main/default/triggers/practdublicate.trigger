trigger practdublicate on Country__c (before insert) {
    set<string> sobj= new set<string>();
    for(Country__c k:trigger.new){
        sobj.add(k.name);    
    }
    map<string, Country__c> mobj= new map<string, Country__c>();
    list<Country__c>  cobj =[select id , name, Country_rigion__c, Phone__c, URL__c from Country__c where name=:sobj];
    for(Country__c c1:cobj){
        mobj.put(c1.name,c1);
    }
    if(mobj.size()>0){
        for(Country__c c2:trigger.new){
            if(mobj.containsKey(c2.name)){
                c2.adderror('This is dublicate record');
            }
            
        }
    }
    
    
}