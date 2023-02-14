@istest
public class TestObjectAmainclass {
   @testsetup static void init(){
       Testdatafactory.createacc();
        //Object_A__c  Aobj= new Object_A__c();
        //Aobj.name='testprakprak';
        //Aobj.Picklist__c='C';
       // insert Aobj;
       
       //system.assertEquals(Aobj.Picklist__c,'C');
       //system.assertNotEquals(Aobj.Picklist__c,'H');
    }
    public static testmethod void demo(){
        test.startTest();
        ObjectAmainclass acc= new ObjectAmainclass();
        acc.damm();
        test.stopTest();
    }
    
}