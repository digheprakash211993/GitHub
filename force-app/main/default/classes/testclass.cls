@istest
public class testclass {

    public static testmethod void conmethod(){
        Country__c c1= new Country__c();
        c1.Name= 'ppp';
        c1.Country_MD__c='a098c00000sKYf1';
        c1.Country_rigion__c='N';
        insert c1;
        testmaincllass acc=new testmaincllass();
        acc.demo();
        
    }
    public static testmethod void conmethod1(){
        Country__c c1= new Country__c();
        c1.Name= 'ppp1';
        c1.Country_MD__c='a098c00000sKYf1';
        c1.Country_rigion__c='S';
        insert c1;
        testmaincllass acc=new testmaincllass();
        acc.demo();
        
    }
}