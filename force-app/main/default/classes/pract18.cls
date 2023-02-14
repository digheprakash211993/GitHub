public class pract18 {
    public LIST<Country__c> str{set;get;}
    public void demo(){
        str=[select ID,name,Phone__c from Country__c ];
        FOR(Country__c ACC:str){
            ACC.Phone__c='7000';
                
        }
         update str;
        SYSTEM.debug(str);
    }
}