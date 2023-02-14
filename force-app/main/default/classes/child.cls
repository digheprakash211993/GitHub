public class child {
    public list<hotel__c> mat{get;set;}
    public child()
    {
      mat=[select Hotel_Address__c, Hotel_Name__c, Hotel_prise__c, Mobile_number__c from hotel__c];
system.debug(mat);
    }

    public void mat()
    {
        
    }
}