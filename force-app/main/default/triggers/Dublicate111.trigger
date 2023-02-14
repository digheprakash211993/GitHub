trigger Dublicate111 on Hotel__c (before insert) {
   set<string> sobj= new set<string>();
    for(Hotel__c k:trigger.new){
        sobj.add(k.name);
    }
    map<string, Hotel__c> mobj= new map<string, Hotel__c>();
  list<Hotel__c>  hobj =[select id, name, Hotel_MD__c, Hotel_prise__c, Hotel_Name__c from Hotel__c where name=:sobj];
    for(Hotel__c hott:hobj){
        mobj.put(hott.name,hott);       
    }
    if(mobj.size()>0){
        for(Hotel__c h1:trigger.new){
            if(mobj.containsKey(h1.name)){
                h1.adderror('this is dublicate record');
            }
        }
        
    }
}