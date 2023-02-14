public class pract12class {
@auraenabled
    public static Object_B__c method1(Object_B__c acc){
        //Object_B__c objB=New Object_B__c();
        //objB.Name=acc;
        system.debug(acc);
        insert acc;
        return acc;
    }
}