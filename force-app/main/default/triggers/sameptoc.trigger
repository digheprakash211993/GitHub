trigger sameptoc on Country__c (after insert) {
    list<States__c> sobj= new list<States__c>();
    for(Country__c k:[select id, name, no_of_count__c, Phone__c, URL__c from Country__c where id=:trigger.new]){
        States__c  staobj= new States__c();
        staobj.name= k.name;
        staobj.Country__c=k.id;
        sobj.add(staobj);
    }
insert sobj;
}