trigger sameinsert on Country__c (after insert) {
      list<States__c> demo=new list<States__c>();
    for(Country__c k:[select id, name, Country_rigion__c, Phone__c, URL__c from Country__c where id=:trigger.new]){
        States__c data= new States__c();
        data.name= k.name;
        data.Country__c= k.id;
       demo.add(data);
    }
    insert demo;
}