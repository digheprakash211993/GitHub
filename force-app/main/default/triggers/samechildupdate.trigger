trigger samechildupdate on Country__c (before update) {
list<States__c> demo =[select id, name, Dist__c, District_Name__c, URL__c, Country__c from States__c where Country__c=:trigger.newmap.keyset()];
    list<States__c> data= new list<States__c>();
    for(States__c K:demo){
        K.URL__c=trigger.newmap.get(K.Country__c).URL__c;
        data.add(K);
        
    }
    Update data;
}