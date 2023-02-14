public class URL1 {
    public list<Hotel__c> demo{set;get;}
    public URL1()
    {
        
demo=[select Hotel_Address__c, Hotel_MD__c, Hotel_Name__c, Hotel_prise__c from Hotel__c];
system.debug(demo);
    }

}