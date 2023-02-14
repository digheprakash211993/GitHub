trigger Adderror on Account (Before insert) {
customsettingfortrigger__c obj = customsettingfortrigger__c.getValues('check');
if(obj.checkbox__c){
 for(Account k:trigger.new){
    k.adderror('Not insert');
 }
}
}