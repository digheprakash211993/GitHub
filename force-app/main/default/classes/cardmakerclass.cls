public class cardmakerclass {

    
    
    @AuraEnabled
    public static Contact createContact(Contact contact){
        upsert contact;
        return contact;
    }

}