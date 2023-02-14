public class Inputmethod {
    @auraenabled
    public static list<Country__c> searchmethod(string conname){
        string str='%'+conname+'%';
        system.debug(conname);
        list<Country__c> cobj= [select id, name from Country__c where Name like:str];
        system.debug(cobj);
        return cobj;
        
    }

}