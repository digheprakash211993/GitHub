trigger deletecoun on Country__c (before delete) {
    for(Country__c k:trigger.old){
        k.adderror('Do not delete');
        
    }
}