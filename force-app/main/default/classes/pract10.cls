public class pract10 {

  public pract10(){
Country__c cobj= new Country__c();
cobj.Name='Prakash11';
cobj.Country_MD__c='a098c00000sKhdT';
cobj.States__c='a098c00000sKhdT';
insert cobj;
system.debug(cobj);
    }
}