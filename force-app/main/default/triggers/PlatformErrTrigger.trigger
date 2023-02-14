trigger PlatformErrTrigger on PlatformError__e (after insert) {
list<Error_Logs__c> E1= new list<Error_Logs__c>();
    for(PlatformError__e a:trigger.new){
         Error_Logs__c eobj= new Error_Logs__c();
            eobj.Name=a.StoreerrorMsg__c+'  '+a.RecId__c;
             E1.add(eobj);
        }
     insert E1;
        
    
    
}