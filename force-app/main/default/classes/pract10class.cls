public class pract10class {
@auraenabled
    public static string method1(string cobj){
        Object_B__c Conboj= new Object_B__c();
        Conboj.Name=cobj;
        
        insert Conboj;
        return Conboj.id;
    }
}