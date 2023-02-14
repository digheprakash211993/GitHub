trigger productiontrigger on Country__c (before insert) {
prodctiontrigger__c obj = prodctiontrigger__c.getValues('checkthetrigger');
if(obj.deactivate_trigger__c){
    for(Country__c k:trigger.new){
        k.adderror('do not insert the record');
        
    }
    }
}