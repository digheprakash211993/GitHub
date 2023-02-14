public class pract12 {
    public string str{set;get;}
    public void demo(){
      Hotel__c str= new Hotel__c();
        str.name= 'Moumbao hotel';
        str.Hotel_MD__c='a0B8c0000124gsP';
        str.Services_Types__c='a0B8c0000124gsU';
        insert str;
        system.debug(str.id);
        
    }
}