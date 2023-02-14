trigger subscribechannel on Account (before update) {
    list<Notification__e> notif= new list<Notification__e>();
    for(account acc:trigger.new){
        Notification__e nobj =new Notification__e();
        nobj.Recid__c=acc.id;
        nobj.UserName__c=Userinfo.getUserName();
        notif.add(nobj);
        
    }
    EventBus.publish(notif);
    
}