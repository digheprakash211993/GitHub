trigger RecordErrorplatform on Account (before update) {
    list<PlatformError__e> E1= new list<PlatformError__e>();
 if(trigger.new.size()>100){
        for(account acc:trigger.new){
        acc.adderror('Record list is more than 100');
        PlatformError__e eobj= new PlatformError__e();
            eobj.StoreerrorMsg__c='Record list is more than 100';
            eobj.RecId__c=acc.id;
            E1.add(eobj);
        }
     EventBus.publish(E1);
    }
}