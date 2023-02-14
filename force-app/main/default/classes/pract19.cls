public class pract19 {
    public list<Object_B__c> str{set;get;}
    public void demo(){
       str =[select id, name, Phone_No__c, Email_Id__c from Object_B__c];
        system.debug(str);
    }
}