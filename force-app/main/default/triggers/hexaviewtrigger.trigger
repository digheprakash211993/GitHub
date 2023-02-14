trigger hexaviewtrigger on Account (after update) {
list<Opportunity> opp=new list<Opportunity>();
list<Opportunity> conlist=[select id,accountid,name,Status__c from Opportunity where accountid=:trigger.newmap.keyset()];
for(Opportunity cont:conlist){
if(trigger.oldmap.get(cont.accountid).Billing_State__c!=trigger.newmap.get(cont.accountid).Billing_State__c){
cont.Status__c='IN progress';
opp.add(cont);
}
}
update opp;
}