public class URL2 {
    public list<Hotel__c> obj{set;get;}
    
public URL2()
    {
  obj=[select Hotel_Address__c, Hotel_Name__c, Mobile_number__c, Hotel_prise__c from Hotel__c];
system.debug(obj);  
        
    }

    
}