@istest
public class messageshowtestclass {

    public static testmethod void method1(){
        Country__c cobj=new Country__c();
        cobj.name='ram';
        cobj.Country_MD__c='a098c00000sKYf1';
        insert cobj;
        messageshow msgobj=new messageshow();
        msgobj.demo();
    }
}