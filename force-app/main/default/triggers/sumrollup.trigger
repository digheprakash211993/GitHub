trigger sumrollup on Contact (after insert,after update) {
    if(trigger.isafter && trigger.isinsert){
    set<id> sobj= new set<id>();
    for(contact cont:[select id,lastname,accountid,Salary__c from contact where id=:trigger.new]){
        sobj.add(cont.accountid);
    } 
list<account> acc=[select id,name,No_of_Count__c,Salary_Count__c,(select id,lastname,accountid,Salary__c from contacts) from account where id IN:sobj];
    for(account a1:acc){
        a1.No_of_Count__c= a1.contacts.size();
        decimal sumofsal=0;
        for(contact c2:a1.contacts){
            sumofsal=sumofsal + c2.Salary__c;
        }
        a1.Salary_Count__c= sumofsal;
    }
    update acc;
    }
    
}