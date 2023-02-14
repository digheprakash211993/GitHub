trigger cloudcertificate on Account (after update) {
list<contact> cavr=new list<contact>();
for(account acc:[select id,name,Active__c from account where id=:trigger.new]){
    if(trigger.newmap.get(acc.id).Active__c != trigger.oldmap.get(acc.id).Active__c){
        if(acc.Active__c == 'False'){
        contact cont=new contact();
        cont.Lastname='xyz';
        cavr.add(cont);
        }
    }
    }
    insert cavr;

}