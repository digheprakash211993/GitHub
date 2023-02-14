@istest
public class TestNormalclass {

    @testSetup static void init(){
        Datatestfactory.data();
        
    }
    public static testmethod void method1(){
        Normalclass nobj=new Normalclass();
        nobj.Method2(); 
       
    }
    public static testmethod void method5(){
        Normalclass conobj1=new Normalclass();
        conobj1.Method3();  
    }
    public static testmethod void method6(){
        Normalclass oppbj=new Normalclass();
        oppbj.Method4();  
    }
}