public class pract17 {
   public list<Country__c> cvar;
    public void demo(){
        cvar=[select id,name, Phone__c from Country__c ];
        for(Country__c c:cvar){
            c.Phone__c='10000';
        }
        update cvar;
        system.debug(cvar);
    }
}