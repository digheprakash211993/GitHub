trigger pract35 on Object_A__c (before insert) {
productiontrigger__c  objc = productiontrigger__c.getValues('check');
if(objc.Deactivate__c){
    for(Object_A__c Avar:trigger.new){
        Avar.adderror('Do not insert the record');
    }
    }
}