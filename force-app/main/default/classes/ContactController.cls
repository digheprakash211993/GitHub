public class ContactController {
    
     @AuraEnabled
    public static Contact createContact(Contact contact){
        upsert contact;
        return contact;
    }

}