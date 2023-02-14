trigger practsameparrtoinsertschild on Country__c (after insert) {
    list<States__c> s1= new list<States__c>();
    For(Country__c k:[select id, name, URL__c from Country__c where id=:trigger.new]){
        States__c sobj= new States__c();
        sobj.name= k.name;
        sobj.Country__c= k.id;
        s1.add(sobj);
        
    }
    insert s1;

}