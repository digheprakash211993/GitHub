trigger pract23 on States__c (after insert) {
    list<Country__c> clist= new list<Country__c>();
    for(States__c sobj :[select id,name,Country__c,URL__c from States__c where id=:trigger.new]){
        Country__c cvar= new Country__c();
        cvar.name=sobj.name;
        cvar.States__c=sobj.id;
        cvar.Country_MD__c='a098c00000t5SLd';
        clist.add(cvar);
    }
    insert clist;
}