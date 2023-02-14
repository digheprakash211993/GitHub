trigger update111 on Country__c (after update) {
list<Country__c> cobj= new list<Country__c>();
    if(Recursive.bobj==true){
        Recursive.bobj=false;
    for(Country__c k:[select id, name,Phone__c from Country__c where id=:trigger.new]){
        k.Phone__c='0010';
        cobj.add(k);
        system.debug('Recursive trigger');
    }
   update cobj;
    }
}