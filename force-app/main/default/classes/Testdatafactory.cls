@istest
public class Testdatafactory {
    public static void createacc(){
        Object_A__c  Aobj= new Object_A__c();
        Aobj.name='testprakprak';
        Aobj.Picklist__c='C';
       insert Aobj;
        
    }
 
}