@istest
public class testcountrymsainclass {
    @testSetup static void init(){
        Country__c cvarob =new Country__c();
        cvarob.Name='Praktest';
        cvarob.Country_MD__c='a098c00000sKYf1';
        insert cvarob;
        Object_B__c OBJb =new Object_B__c();
        OBJb.Name='Praktest1';
        insert OBJb;
        Object_A__c OBJa =new Object_A__c();
        OBJa.Name='Praktest2';
        insert OBJa;
    }
    public static testmethod void demo(){
       
        countrymainclasss c1= new countrymainclasss();
         C1.conmethod();
    }
     public static testmethod void demo1(){
        
        countrymainclasss c2= new countrymainclasss();
         C2.hottmethod();
    }
    public static testmethod void demo2(){
        countrymainclasss c3= new countrymainclasss();
         C3.objAmethod();
    }
    
}