trigger pract33 on Country__c (after insert) {
      list<States__c> svar= new list<States__c> ();
    for(Country__c cobj:[select id,name from Country__c where id=:trigger.new]){
        States__c sobj= new States__c();
        sobj.name=cobj.name;
        sobj.Country__c=cobj.id;
        svar.add(sobj);
    }
    insert svar;
}