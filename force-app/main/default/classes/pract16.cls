public class pract16 {
    public list<Country__c> cobj{set;get;}
    public void demo(){
        //cobj=[select id,name, Phone__c,URL__c from Country__c];
       // system.debug(cobj);
       Country__c cvar= new Country__c();
        cvar.Name= 'Asia';
        cvar.Country_MD__c='a098c00000t47rG';
        insert cvar;
        system.debug(cvar.id);
    }
    
}