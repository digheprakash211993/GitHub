public without sharing class sharingobjb {
    public list<Object_B__c> objB{set;get;}
    public sharingobjb(){
        objB=[select id, name, Phone_No__c from Object_B__c];
    }
}