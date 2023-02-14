public class pract11 {
    public string cobj{set;get;}
    public void demo(){
        Country__c cobj =new Country__c();
        cobj.Name='Prakash23';
        cobj.Country_MD__c='a098c00000t47rG';
        insert cobj;
        system.debug(cobj.id);
        
    }
}