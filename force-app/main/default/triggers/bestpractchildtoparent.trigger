trigger bestpractchildtoparent on States__c (before update) {
    map<id,Country__c > mobj=new map<id,Country__c >([select id from Country__c]);
    if(mobj.size()>0){
        for(States__c n:trigger.new){
            mobj.get(n.Country__c).URL__c=n.URL__c;    
        }    
    }
    update mobj.values();
}