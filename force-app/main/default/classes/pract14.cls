public class pract14 {
    public string str{set;get;}
    public pract14(string str, boolean intvar, integer num){
        system.debug('inside constructor '+str);
        system.debug('inside constructor '+intvar);
        system.debug('inside constructor '+num);
    }
    
    public void demo(){
        Country__c cobj= new Country__c();
        cobj.Name=str;
        cobj.Country_MD__c='a098c00000sKYf1';
        
        insert cobj;
        system.debug(cobj);
    }
}