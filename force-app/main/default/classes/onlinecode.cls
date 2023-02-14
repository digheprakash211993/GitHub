public class onlinecode {
   
@AuraEnabled

public static Object_A__c saveAccount (Object_A__c acc) {

upsert acc;
return acc;
}
    @AuraEnabled
    public static Object_A__c saveFDBugRecord(Object_A__c fdBugRecord) {
   // public static void saveFDBugRecord(Object_A__c fdBugRecord) {
        insert fdBugRecord;
        return fdBugRecord;
    }
    


}