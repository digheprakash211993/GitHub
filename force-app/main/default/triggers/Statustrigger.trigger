trigger Statustrigger on Contact (before update) {
 set<id> sobj= new set<id>();
    for(Contact k:trigger.new){
        sobj.add(K.AccountId);
    }
       map<id,Account> mobj= new map<id,Account>();
    list<Account> data=[select id,name,Phone, Acc_Status__c from Account where id=:sobj];
    if(data.size() >0){
        for(Account cobj:data){
            mobj.put(cobj.id, cobj);
        }           
    }
    if(mobj.size()>0){
        for(Contact g:trigger.new){
            mobj.get(g.AccountId).Acc_Status__c=g.Status__c;
        }    
        
    }
update mobj.values();
}