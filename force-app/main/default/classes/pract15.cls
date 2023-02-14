public class pract15 {
    public string str{set;get;}
    public void demo(){
        Country__c cvar= new Country__c();
        cvar.name=str;
        cvar.Country_MD__c='a098c00000sKYf1';
        
        insert cvar;
        system.debug(cvar.id);
    }
}