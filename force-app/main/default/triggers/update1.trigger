trigger update1 on Country__c (before insert) {
    list<States__c> data= new list<States__c>();
    for(Country__c k:trigger.new){
        States__c sobj= new States__c();
        sobj.name='yup';
        
    data.add(sobj);
    }
    insert data;
}