trigger multipletrigger on Country__c (before insert, after insert, before update, after update) {

    if(trigger.isBefore && trigger.isInsert){
        system.debug('this is before insert');
    }
    
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('this is After update');
    }
}