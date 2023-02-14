public class pract13 {
    public list<Hotel__c> str{set;get;}
    public pract13(){
       str =[select id,name, Hotel_MD__c, Hotel_prise__c from Hotel__c];
        system.debug(str);
    }
}