public class fruit {
    public list<Hotel__c > moon{set;get;}
    public fruit()
    {
     moon=[SELECT Hotel_Address__c, Hotel_MD__c, Hotel_Name__c, Hotel_prise__c, Mobile_number__c from Hotel__c ];
     system.debug(moon);
    }
    

}