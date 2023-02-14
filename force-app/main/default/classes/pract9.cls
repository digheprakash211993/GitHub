public class pract9 {
    public list<States__c> cvar{set;get;}
    public pract9(){
    cvar=  [select id,name ,District_Name__c, prise__c from States__c where Country__c='a088c00001EzWtp'];
    system.debug(cvar);
        
    }
}