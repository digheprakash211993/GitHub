public class URL3 {
    public list<Hotel__c >data{set;get;}
    public URL3()
    {
data =[select Hotel_Address__c, Hotel_MD__r.name, Hotel_Name__c, Hotel_prise__c from Hotel__c];
system.debug(data);
        
        
    }

}